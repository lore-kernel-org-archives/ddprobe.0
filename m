Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEEA2CA9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735793754; cv=none; b=pfBEG3Jl27agfDLEzQ+iBEz3kdUuQdehugyS4wlNNBOBTi6ShVwwXusL7eBZsTojeOpQqyaWoIDyphDhHh+6V0G6IrA/9GS5907k5dgkJht8N2LaQmZjADtZ8Qr9wiXgWkeVEj6OE0chq4PST0Uue/QXWjsnRbOMgGD+3Isb3dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735793754; c=relaxed/simple;
	bh=wKqWCeT1jfrgm1kDi4g//EwdwxNEo3xEITi2BRLux/8=;
	h=To:Subject:From:Message-Id:Date; b=sHjB4AAN2uLfYjT8VSCL4bC5dERqL1wXHatyhldhgdAog86Cj9+SI6kbqigdn1+k3CGfka0CHZEAXuFy3eX3jWpLXIDBDLH+NDWeW0ONjwpdb1ct0mMLEbDXaY267+Zz5QLtPIFMGQoyP4J8QpCmmANo1WU6VV0g6jeJnSSGfNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWzQiTPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWzQiTPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD8AC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735793753;
	bh=wKqWCeT1jfrgm1kDi4g//EwdwxNEo3xEITi2BRLux/8=;
	h=To:Subject:From:Date:From;
	b=WWzQiTPYVdErXzl1enPriymYIyMZFx0icHbZvfVQ30dvbZYgHQbKYOPqlRdmfnhVh
	 vKlJ3FnIeDxpH4d7terfxQmJUnNDXWQ/C52ZHw/mEhTS51THZcDYgXW0vDp2wmhYdl
	 Jxd7BT4RwPA1EU3ECv2eD3YZphiw53xzCvhMzbOkwl/u3e4h0ZgAoNw2Sfxqe98J/m
	 UExTN+i6Fezj8jlesqKrmYFAbYQaHThiB3ToqhmQ0sS/oaFXtkKRrgScyYQH8GOnRE
	 zcSgUqeIn3R/bGhc2HhxyDY+6KmN17XlZx/uYB36P1e+gdlgrTGxiE8HTspHFKhu+F
	 NhNzmW02i7Z8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A577BE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579375364.28256.12510968227647324241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932fa045e6e61f0cc59fc6335a0660cf5c47863b95f300b2329676aef1b2691e
Date: Thu, 02 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735793753
