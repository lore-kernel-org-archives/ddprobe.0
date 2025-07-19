Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC4B155725
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752929394; cv=none; b=IT9nDr6IQSzUB5YO1za+VO5X/45NsoKCEFKLrLSQWimfi4Q5EKnyZaEglL/khoLEHoE+bM3e6RyiiVNBkdsIDJPW4zsWSksAHfq/YUMaJBQzx+e+0vSx2plcXjtNho2+LUEfIhFctTj4Qreffd0RIkDQ7DGubslTdqAutJ66Du8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752929394; c=relaxed/simple;
	bh=VqxWYn0XS95r5L0sdiTaGm9k+LbXjM9h+tBx1uMHUgc=;
	h=To:Subject:From:Message-Id:Date; b=kYopq1WcX5tVzTbVpsfBBX4Ms2ehfv5fq6guxxgYvfUNa2/yPckcjb0VhXoR5LHphgRW65ZSawUh7DPzVquYOVXj6sZl8+jNcCIXWaDBRfB6kUaAPl+hrL5aZhlSAwlDBdqZz/OnPlOlC2fiGnrcrvuIrRkw+xsSLoxg8i5SJpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ikzu0/VD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ikzu0/VD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D343C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752929393;
	bh=VqxWYn0XS95r5L0sdiTaGm9k+LbXjM9h+tBx1uMHUgc=;
	h=To:Subject:From:Date:From;
	b=Ikzu0/VDefIwI7G4p+n6v3VWQ+meIGXzDH7VLfkYAP5KBSwK2S5JEwH0tK0JV5lTH
	 2iwMtzNZ2SMHJ43kvzyCe0WKG16wWPh3m5Eyooi3RoGWAwLOnvQzidY+hDZgz3etr9
	 kGduScwNEy5KvuZUG3rld/1P0xzDbBPE/Z2yhDLuSp4+oW3ddqYEMjAZiO27GRaGqe
	 mgzv1Q5JsX3+mfZZa3DDMmerEMn75SOLM6HeyD1AQPFEwRhX784C6enLebgUCmk97/
	 Wm2xPsjiqWq7GPVL9HdOQ9U4zum8vkg9g0IdhZQIzqCiRqHoGMjigUTncA1vn9/vp9
	 Zrv4fO77DCm8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F185C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292939357.16178.10648597262351403042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f2d7ee6556cf8479f53f1d383c26a8cfe8adb0936175f204736faf82a271a5
Date: Sat, 19 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752929393
