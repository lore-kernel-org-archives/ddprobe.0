Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC80388E5A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785436836; cv=none; b=Hv18kqbm7IzWerZtKDa8RknfQfiLWuqaf378aA0TP/oBp3rAKlXmkITeN9jFU9gOEhXV3E6zleS0DM7AVrKvwgFgRmdvYbe1AK7zMjGmvx1/UWq5Lg8q/nHgTqpfDn7QWNF3wBJkGb92lJy3sufAY+6RGL0gg/Z21BCumOUO6gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785436836; c=relaxed/simple;
	bh=4ItTzznml2XE/4CqiurwbF9Cx/kz2htmgT8lcwIH9L8=;
	h=To:Subject:From:Message-Id:Date; b=Lur0YZ/KCjgj2JY7X3wOyiTNio7JM84dTV22TM6j1dHFVQZocZXCW+zyzmQa3eKNdQQWYHR73w5X5T9M9F3D8gkwdlEHAp6fJO85C+wRxfzO+USvN0Qalv/wyHFWb6GICq7n5SQ8TlgKmDMf0YXjPYCFIsb8n8ZZMcbEsIhaThI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MglHdQHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MglHdQHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE20AC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785436833;
	bh=4ItTzznml2XE/4CqiurwbF9Cx/kz2htmgT8lcwIH9L8=;
	h=To:Subject:From:Date:From;
	b=MglHdQHwKiDQhp1TUirh+90bU6iJJCNCBLADYQLuDNq69LRE6YgutNplo8/WrQs+h
	 8BKb6KnIcq9M0dsZFUIuYiIqZYPobCpMVxPaZgqFENLqjkfoK+HgGcW7q+EFssI87T
	 g2va6W/hKYkZI+U5IH+iHQkeR/oYDBLsf2nXaBW28KHj5gLdJloLfxMa+UFbYRZrry
	 is/VDCvxYTgXvJtANc6kaUmB95uedfV6vKSrLMBJw3+H07ebi3DPVcoA2KtRsuCyET
	 Y+em/mpgbSF4pUYbyjNFk16ZXCtZf/YaRdYd8dHo8Q0c2wXIUEhapNGLuHpzqlC1Sy
	 tMSoYHc9x81jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5CFC5516D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543683370.25777.6057846470516031605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ed5c94034c564923dad601c3c3026f38f77c09c7e0b32794280a48c992a14e
Date: Thu, 30 Jul 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785436833
