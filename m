Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A581C1AAA
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743268194; cv=none; b=ksms/mHIXJgcSji/PD6H71eEoT0UD94UTKQVTK6sYk5DxdmMS2qqDconxi1qTKP6xYBoRctwqZf+DakUYIFC0ppqZuBcsKuGptJpKyBR98jO/zS1LLlo474wF8BxDLV9YBI2H8HmRV1GILT5QRAuRmNYp/rcaTg6C9vMQL798GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743268194; c=relaxed/simple;
	bh=5oNN9NDyekcbjWWIb6NoK7X7AGWOfZlbOm/PvXF36KI=;
	h=To:Subject:From:Message-Id:Date; b=XSkVvYjbw3ZrAJgS2krvQ8WG8yUo6YbKgzhvh70hqA/N+vL4Ggl0Nyd1og+JqAZQcwyF1u1MxDW/zz9jRIy1ngFqf1+QjdCVRVRAumzU5dyqLEx6PDykD7ndgTXW56loue5XINMMWdebQMmoYjGoUU8Li/qfzhepcYilU8g95vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fa4yNkud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fa4yNkud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBB5C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743268193;
	bh=5oNN9NDyekcbjWWIb6NoK7X7AGWOfZlbOm/PvXF36KI=;
	h=To:Subject:From:Date:From;
	b=fa4yNkudusjbs9gTXFSKxDlLBhLiK+DN9XCTdzkxI1M/HPKiYu8/YOokwh5Tlcm/t
	 zxattLvvWFjIKDmWLUEQc+OFkLaMEvdGj0S4K8+wZhconV9C+sggprw/gPoD2wrxvp
	 MUn/SdqofdzepsQDkm+g2uNyjH3Nl1OTD2JkIgrNEKavCNwnXthCpE6KKodUxY1d41
	 TT7DXoUysXBr9PhOp9puolw47kQEZvxmelIVxoeDBt7QckUHnMo4EVcpfsRcwdFAFb
	 M8fpdd8nzEzVeuRv5PQE/2HoPqwMNbuHp9GlE0UiXQK7RhC4aO2ty5hLPO/+6UYrmv
	 tWipTg4A7afXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995E2C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174326819361.3176.3192496374787567578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473d0f831cab56e49d7708f466e6f8473886de14de22d381493cf90d3f951a5a
Date: Sat, 29 Mar 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743268193
