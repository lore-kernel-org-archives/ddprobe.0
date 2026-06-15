Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DAAF37CD52
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781512594; cv=none; b=uy8n4nMhdhp1zLK/sO58k0ryS8qr6enJ78/3hiMER92WnNBMOhzO1pr25Td3sqPkKhhKQBkaywQsILfs7mR5pUNmbF3mNTHGdRfHIG0DD0Sjf2PoHe1q10UOcBk5hmau17XTIfKUGfAj6TMGkoYX0V22ewl28jgtjRbge3+tngM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781512594; c=relaxed/simple;
	bh=HlluTagM9uzIzl65I0WtV+G6K82ENw+k/H8vzKuWdec=;
	h=To:Subject:From:Message-Id:Date; b=eaz2Jtw7cGsvmlNj283rBmwJYzPgVc1E/jilHLGq/OSOD/acyHrFhHsPP0h7lAmkKRKnH7ArE0K1Swai+JPvVv5aK+yVKgpMVeHHbnSodBLVolHT3EOuec9U8NfL0XT//qwFPu9ZWQgB+CN+IE+4Cmrzl5dtW3mEoE720ly08wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6j+1a7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6j+1a7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB649C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781512593;
	bh=HlluTagM9uzIzl65I0WtV+G6K82ENw+k/H8vzKuWdec=;
	h=To:Subject:From:Date:From;
	b=F6j+1a7owZUgrxIH6YP/p9Eaf9HJ4ybxzExY645lC6K25zY15HriQvRYKBkE5rw8L
	 rpGvhW6Gs2rj2aRq6bFGZTVoLVOsGVu069bKKhjqA4YZV38DcQpSc5atujEFS8fET5
	 ErmjuJRj+gCpfvuKarpUXRWxtOgY+mB0AEF8HdvkTXg42WrewZj9kelJyGBY/jnk9w
	 chfydcUvLv6/CbbAsJ8vwKKA31Gx8yK1NN2iJl/ZifAJspZqh4bjn5umGEMQcfy6Z1
	 bFJ40Ld5z6/JfBhwO48ijQehhdccTQlejie+naHEVE2Dr11f6uOgKTK7RKndFAoui1
	 eiiUDzdag1xOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF73CD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151259369.17310.16107370095481061856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09412744c1d3cc0f0cf80addd8a9b100e87068ddd96e7d10545b8e67d14429b
Date: Mon, 15 Jun 2026 08:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781512593
