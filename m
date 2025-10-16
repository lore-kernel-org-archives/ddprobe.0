Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102233254B8
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760604594; cv=none; b=l+J1sikylMnOMWVoXqb6xQaE6nh/nyxSe83Ms97XHfkpifj6LBLJM9HtJQwVnaZzKer8kk5xz1kIgTKU816nJBivNrg8zK9AtMvmsPuSIZS8LVZJoDin2+oKaddM+Rx7RY5N2AeM9J0uAualU97Ce8LiUc+kAZcf5jsHBGGvFlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760604594; c=relaxed/simple;
	bh=ZQC1Cv5R43wRfdFVr+Fs3OyTbXRn1zJWhhsMUiRo5JA=;
	h=To:Subject:From:Message-Id:Date; b=tvfE3PeeO7Rc++456eLpHdX+Pw9YphO8PF0vbbhkI15NA6bNQdSo4CSZ07Kz+XpFIOANE4bTWq4EEF2B8aq/U8EO0nG/RzVB4ICQY+j2nsfhEaKHTM84QZ6j3jtaJtPf9/lW1bJEFJBj+JTKn+H8PgEpYS56WJv7f7fNno5tfQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYluq23K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYluq23K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9AFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760604593;
	bh=ZQC1Cv5R43wRfdFVr+Fs3OyTbXRn1zJWhhsMUiRo5JA=;
	h=To:Subject:From:Date:From;
	b=UYluq23K4RAzL3UUAQ5ynNhBXnEoJAB377vHiN4smQwoMTOWCqvpH+C97Vn1IKwJa
	 0iWbCK7yLnCuuLorKEaaq/Sh5Gueqwflbda5t+DtagAuL5taKh24dbFiu1JCQ1U5hV
	 ftgqL+cbdQokV/DN6TFiW9QnxiDYht2sPQplE3wV5fyRDsfNqSXPGHP/+EM/1MCUHJ
	 2mV9XbXUqXUjx+ajXRlIhyzukEGFb0D1rLjWCJzs6I0Iz76fyF+ZKJIeqexVEf59lA
	 U70IyDyBnjoQ85pwwK746MlHkH+c6/Jgd3q7Zin5BsN0uCFrTS/FV/bxGBTW9YaO8Y
	 Scuju6CqgsC1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F559CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060459357.4577.15212083150995217367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 208dcc20324991582f20b9cdd38c6e977dd36d1cfbfd2655a215e6f58ad7a565
Date: Thu, 16 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760604593
