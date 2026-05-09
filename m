Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AF81DB13A
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778308654; cv=none; b=CwNQ4/unyKbA+9WIEEcYf52helF2AqFZjd1RN9O0vVUazbql3Is6L8L+jkaAhPU5ZwY3AoGsUOfoce/HQrrklBy00JCwSUMXV1R9BTcn5J+cwl4zDGjrnjrvYZXnecg0sxzGmzZMZTzGhnhAfGxMzrGoY2YDNFQ2Y1JV7KBTadg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778308654; c=relaxed/simple;
	bh=fpvYoN410yZaPWzqZQkIkU680fCs7HD5JmDttMS16CE=;
	h=To:Subject:From:Message-Id:Date; b=jgleyJwyz3Tz5dc+F5RrNlq7dC6NdMYkr9VxiLkApKCbIvL40sD0HyNmjFj1lpe6UDvhz/F9twXvq1zKoEzYS4KT7lrx4MnJBAQz7+RnyHJPcjWH959gQyPbTBn/eFfS3wk3FdiZSOKi2ODiRH+u2UoVOBikIQaorCHLHg/ZyUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cj0yOgAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cj0yOgAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABA2C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778308653;
	bh=fpvYoN410yZaPWzqZQkIkU680fCs7HD5JmDttMS16CE=;
	h=To:Subject:From:Date:From;
	b=cj0yOgAAf4l6O2lK1t1qZ9BTcQHVPhr45iAgBGtVMGjVHe0vfQHxYqbo6HV8dGHEo
	 a9MLtF3Ve1Hc6c+ObF0DpWwAz/nrmAr8uMfHlKGdnVHEsxeEaJ4pdko4J0h32eGu+R
	 E+tvKQDxqfVkd6K2Z3Doop8fZG9oFvhL0pKXuBOEZgEDrllVC6PvMdsBztcUD9mzFR
	 PAwFv3r38/POaSxy6Cyfm0GmaAzb5VReAN/BN9yMNUaxq8S+u6/oyT8KYyfGJBoOp0
	 rZ5pwhzciBkEikkHSBxC0e5MvqHhha12BX/kIvTw19RV49JnQcEYezjJbjgRPioMOk
	 c2JZolTRO1zDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA017CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830865368.7336.4101922758157266182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ddc5c27a55faf620fb8cc51b9d0011c2f8cfce9018808e19d976d60d3af896
Date: Sat, 09 May 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778308653
