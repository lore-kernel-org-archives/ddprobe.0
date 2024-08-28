Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28216EEB3
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724805354; cv=none; b=Npas7N3OI8IiVa/eiB1vLEbM1byDbiVEUFFclNFJBsZK/OHBJsGXgYL1xZBNAC+/ndzWkzMlCKl16TCirEuT6ZAq4PLD3ooRdjR72yIFAcWh3v6e+dg6LtZT4aBT/G29etLOQhTBrvwj7+SOM1kLwBlI0YMqeXVS5lJ6I6shsVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724805354; c=relaxed/simple;
	bh=W/abZQ60cbFnyi/B1VQHu0ABKGafg+1d79xswwBk81Q=;
	h=To:Subject:From:Message-Id:Date; b=Smi5wICMKFznWqB6s//Xgs0JH0/meoUvxFXwUJ/KF1JArXkRoUHWfLCkD6d0Iu9abE2toDsUv3UmRN7JVm7gPEyYN8QoTaAJSZUxJMBNzQTJeZCLMmStYbaGb3ShSmjSIupmSTLNRJrayX4cQkrpQUnysBnmkDUPuzQUWZTfC8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDcVijoN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDcVijoN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B448AC4FEE5
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724805353;
	bh=W/abZQ60cbFnyi/B1VQHu0ABKGafg+1d79xswwBk81Q=;
	h=To:Subject:From:Date:From;
	b=hDcVijoN0G4EnM9fc/3LFpm4saGYGqaoSJT7QJ7HJNs5kFCatpZv9ZInh2hSie8KW
	 7f/b9SMrJ5hrZxKq/cJq8ciY9ik//gNWhYEQygOEb4fjZYmSFmW6lrW1ImfxHWfw/E
	 atTeEu8CX/fIHDTmaR6hIXykxeYQ85Aez5Y82JSNSL/ijBdu9sBMhOpl2CbofJuBGA
	 5t8EqNf3jt8Wp3eP1amXte68T51BISnToBL6aio+VotDL/EuEZrOY+aEHgCqmYCDGf
	 UgnneRK+es+KYozTH6Ixmua1aq5RpOjRtaUpyoTH4eTJ8OIQrSs23628KVNqoA5HCL
	 TLLs1aADvwIBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A047C54747
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172480535362.12258.2334532389155455812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b16441561406b617d3f5d02bfd2084e3ba3dd0a66e995a15b38137f23603a22
Date: Wed, 28 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724805353
