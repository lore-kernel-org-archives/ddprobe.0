Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189DF14F70
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771101294; cv=none; b=cIpD90BoxZQO229xC8m5fNDbXtCSH8gaKEQ0Bo/1GPT87uaZjztPVWQTGkBkxGAp0Ul6DnFmR91+2f488ZthLL1zTVkFUtzWEVkCc46mjkh0AjxQfnKxL+NrL6ruq9xQvtZRXRHOVDguEDwtP6TPiyQ3V53N2B0084glas6vKSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771101294; c=relaxed/simple;
	bh=oYLChFd3B2Lg+3kjt8sGnqiMHuy8fpok4FpBiqSj61g=;
	h=To:Subject:From:Message-Id:Date; b=aBVQonWZnWfxdi0ESIh889/fwHGiHM/jJNknYI7waw5bmyMg4vzFu9u4flRrPG0UqsvJrHGDhBTqge72k/DUWrJfZYUAcEsXfZDBBPt0HaAqxXU4tN9AQ3OHlIWNqsn4Jfp3tl8MQ5c5yp52C5UyfHfD++nOaQPr60g0wzYMDkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMjCVgjb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMjCVgjb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3CAC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771101293;
	bh=oYLChFd3B2Lg+3kjt8sGnqiMHuy8fpok4FpBiqSj61g=;
	h=To:Subject:From:Date:From;
	b=DMjCVgjbLE6kYl42Q/b8pfZPCUN0gJrBL3YwjTLgo/0SXIvkHjASZi+rc0gB3A+uR
	 g0hc0iBkbDRG9vKnGSO/WNERLWGEIHs5/6xRXULKzGnTOiPSI2C152Pba68t21yy6f
	 EVHOT4haeXemgjc0bn67YZBWO7Cre+bxUl6hm1HaYGWZaT6bzq6tknse51qGrNOGoO
	 pqzLxJvQ3ZIikfu8dMImFXjaLj3vxnUu0CacP8T9f0JqnHHYhUHPohJKHheuM3ENP4
	 QA+w6tfdD7ifiLl9BWKrzEbnyPlix7A5LPpEdVlRzfHfF6oyWq7Ixtiv027GFNvxb8
	 +d5HHInrJJU9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A42EBEF5852
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110129366.5830.8869852188462033494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8def67dbbddca2758643f92262c08ffba213e69adae1fc5aba20c932766c8928
Date: Sat, 14 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771101293
