Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BC31D0DE9
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727900754; cv=none; b=WAW+96tTKoSbTMD5Yklgx+L+PMPPPZprDYkldRdi4IBKJQQFHHlFtmP7edVw/Rco2Fpmqbd3DLb7VWfM3uoZB1LpjR0vYjSG7AvkPSn5vNb68wcBgzaStep9jtOfCqA9O7vmCjJXgtfx+r8Rskgd9VzEanoSwruvRvd6aFOhQ7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727900754; c=relaxed/simple;
	bh=MIXnQ3RODhaAfo08H9uZBdPa8rB7r1i1s7qAFTkOhR0=;
	h=To:Subject:From:Message-Id:Date; b=Fkt83/WkAx75jeno+rjgJOgnPG9WDkqOX+rJ97S+J8/Xcptxh7BDMVsf9D/tbJozsdDpZpSRA7oMWA0ktLZ8/k6aCfK8XC51Rxm8ZwxWPuU2av/t+I41huiv2fBTDiUWQo0NypdzYfUWCpHnpP25CO84WEzT1dKYWPJqq8fcaGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IonoP2kQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IonoP2kQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2FCC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727900753;
	bh=MIXnQ3RODhaAfo08H9uZBdPa8rB7r1i1s7qAFTkOhR0=;
	h=To:Subject:From:Date:From;
	b=IonoP2kQZtILaPUioOvBNnSqe3PFgjHKboyH1D+RySGJG/0QCS1VX4fBpt42H54LG
	 uzSL2qj86/KSpyAJtLiFbYDnrieDJVvbTuLcNvL+kZHT6F5uJWnO/00fCC28OFvPap
	 n+FhLRlGo54K6oH2fqueusGdq+LTOyjaFPXU1rygFK+iMX3STW3K+GWFL5lwa4MmFr
	 mMZKoUfwoAYr9ZmoQ6qh0xfMf2MY+BVWGT1GvSqONYcUNA8tJr3zZa7HZxLLYULyIG
	 0z3pGU6XM/Tznde0e557fEUuiqrh2eC75YQ10k6fzu46a0EirFfSteBwQQFHi4z30w
	 gnWpv7gtSeUUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F99CF31BA
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172790075361.20483.12701126308359644236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746ed18e4387c320af2c5fb0638cb3a31dfa47c3577c42de20d653ff0bac3cba
Date: Wed, 02 Oct 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727900753
