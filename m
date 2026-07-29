Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8E7424649
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785359434; cv=none; b=XbMApYAWGxmCeS7wP0/eNbH+TC7TebU9Sxg/jrWUKJsazAflbWcTHnAFMfpEsDqEDWr8XOYFZGb8xldlj2A9mX2TZb/E36KeTO56EyED9C+I6c8r9KDtVCoE62ZBZ0RqKAFwxpZRKNksWbrZiVSTd7fsoZNVmXi+7Q2T2AOLOgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785359434; c=relaxed/simple;
	bh=FmFMhUQX4SU1yW0+qkEOZP6Si79Fw7G00NPUHqjCyUE=;
	h=To:Subject:From:Message-Id:Date; b=hFY+QUAqF5oNASpax/QtiUK8/EXZJ9jwRdnTqW/ltCPA95WPeVnGc38VoPlgOh0YAIISmmeFnusrZwENqmr+1lUDygxO8grHkmcMLFCZZyHBjYXL07ycm1MaeWADMbC/Hw0eIKK5E6rBirFX+7zz4vnvSKpn7dPNNYvmK/KJ9Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jbs+EZNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jbs+EZNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4052C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785359433;
	bh=FmFMhUQX4SU1yW0+qkEOZP6Si79Fw7G00NPUHqjCyUE=;
	h=To:Subject:From:Date:From;
	b=Jbs+EZNHjYgmenByrEkmlo/+URRAF73orM2rIsKmDWTsr8DX9EIsCNUV2VhPi8bqa
	 9rbb/sOJb6pWvWT/Oq7eU9Ow9aDaDk9epWW+3s8hhOA2eTMBrGT8fOj/ETKYVYF9MT
	 EpGojVp3VEZ+/sJhRo3OWwtV7QjMrRrNKyhsujGA3+oEKOrwh8WV3k7nnJ9QsLGy6M
	 YCf1CqKnau9taAivPEqIqjS44xrGxsaW3uPnzfXWdlrBMLevpWKm1V25HQhxHoS0ss
	 tGy+IYRa8mxItM7bquqN10fg9c16uZwdBUYLRfzsYa/mx9DtZVf+NDGMK7Yb3Blajq
	 NVAmMOuGLOqww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84A3C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178535943374.19035.1305745782793140005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28c3017d2f5128f477897777ebc0d362f6c2cb17d9c9f670a5826e29447e31c
Date: Wed, 29 Jul 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785359433
