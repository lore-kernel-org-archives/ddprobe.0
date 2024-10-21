Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D391D278D
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729499754; cv=none; b=G0fSxwE+sba4lYZ6u/06104vAGWcYttg/JkbRIzvl7KjGLP1p0iAfFLu30254xV/LZzccPF/+AZSYNfdLA1yUswxeqwyHDd3SY03TQLeJX3M7Ty4QZMxt5otrw0kgGGKamLBj4PggwnO0YpofR1UVK49pKpVP8fuJDjg6CmCI0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729499754; c=relaxed/simple;
	bh=F6YG6RDG0WYR51he8NgCzkIRoUzxLT9WTVe+CrFwnRg=;
	h=To:Subject:From:Message-Id:Date; b=mw8zDMO2KrMnAo7N8sAb7oDyc2LcRW9U+pPjfN3pMmIJYS3IzWk0y5lOGZfErp2/z30o9X8IX66IsrG4d/VuG2zH2YixL5osChSAORozRTqGnqaHD9pjIepf/6hMWqBTN+8Y0t2PXnlz9DtdBDi/x9t88Vs2vYGXuX0Ijnk5Zwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uruzao+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uruzao+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACFBC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729499753;
	bh=F6YG6RDG0WYR51he8NgCzkIRoUzxLT9WTVe+CrFwnRg=;
	h=To:Subject:From:Date:From;
	b=uruzao+V2f2fxTMELxCI2s4lATxn323TBmGMZQ5PA4ZAmMAaBXrMp50viIkXOBokH
	 Rq2Da3lOeCnUbwDsjBzacFvL3LqiXrWkXWUkkvC/9PBT9gNSVvFes+0m7P5dxAviJr
	 4eWoChwX3V6KlFTqE8tY48jxAwKNdb0jVF2NLrqncC7buKYa6Ft8Mtma3DL1EezVZ5
	 p2gkgLNqfQYekTPMcgTCOtNE3+nciPoIge8SQ/8PVoK4D2YD91Slu1EgIuG6dwYG52
	 td/91MMHaQ98CuuevU0jI/2xrAhRKqNXOTltoVTJJoWc8I0zpKf4RUWBZMY+mSSMM3
	 IP3tF+uOx06Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985CED0E6CC
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172949975361.6917.15177533439490355256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eefa39b2139c5d5073efc3a41cff83cfbcd08269598b2f556573e160a46ec035
Date: Mon, 21 Oct 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729499753
