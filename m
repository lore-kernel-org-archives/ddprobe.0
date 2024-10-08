Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F1D1DA5F
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 02:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728355555; cv=none; b=poGN6g91z514bnz3AD8aTFKAafi2PcdpjtjpHnC/VeMFbsuo0aQjWbzy/vBXcUb8wQz/OucBYX+vNjkfDx7LQtUIPMlfyuazSZb9DuoaYgG9FB/i6wg01A8cLWRtAYXmFIOtSY6Nwtv4+ksjvnufyubzJG5eZfi0x+RdU1lzW9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728355555; c=relaxed/simple;
	bh=LlaF9RM1bVWvoimhAj8ECTusJ0A7mQwZBoL/VTZhvtk=;
	h=To:Subject:From:Message-Id:Date; b=ZXGd6129BXOpnNpC/b3bniBKq4xOaQ/indHGORI5SYCxaK1PXnwvcJpKA494CCJ4SBqm/z93zFh66oF4Ih0N1Fph04Rnyjnu+ORM0v2L3wIiLT58Hm2qI1rpPSvaUj3Ivn+Hl9qdDo2o1KZBLEMelXe6EbqpKZ/daI/RrDIFksY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJwJi7Mm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJwJi7Mm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B916DC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728355554;
	bh=LlaF9RM1bVWvoimhAj8ECTusJ0A7mQwZBoL/VTZhvtk=;
	h=To:Subject:From:Date:From;
	b=LJwJi7MmFmo+MdZwfCIyYmyIlwoPtlH/kpNv2Qnlrb0gDgnbf5j3sQIjF/+FmVGl+
	 CPHaDpXpTjZzt0m/+Mfm6BjlLarrfn14m3LkKQEPoZGh4lFP3JpRzx3hhFHFomJj7n
	 zuIitDK+z8x+kX9xBgdY8NC763JPhMjdypoTHA2r1Yvrg3OE3M6TzsUPQxbiuhhkSe
	 1wg+qlFEIsEcpBnJ4MIaQFkdV2cTL5QakPc9dluUg9gCuEd+q1TPttsdxP5Nme3fQO
	 /TL6Cbd9sPsGEpVooEbg6S3106SfS5AFNpUm/oszcnoknlLHslyf2rV1eoE1nQFBQS
	 xsTmO/xMs5QBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9347CCED256
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172835555358.28008.10160671620959154884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbbb0b019b2cbe0d9e6e01b107b56b008f0865a37bf339302c53259cf293a50
Date: Tue, 08 Oct 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728355553
