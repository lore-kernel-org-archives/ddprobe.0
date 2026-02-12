Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10388288B1
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770872094; cv=none; b=spro4hS5XYhp2KxiNDOn7P8rbqe59+3BVWlZCaYy5iD0QIIcEHj+DquQQtd8yShDyeb8tDtihXYIU6wVlms5TqvIlC/TbuR/yfYAwMtzcTo6KIDxN/gbk3GzKzvBGv94vpu+PiiFfY5HRQDyvwyWQl1ba2NQgHCoxZnWwWqpBbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770872094; c=relaxed/simple;
	bh=K1UjSMiH7XdZXGIJds9G5QU5aTnUmoZCeGhGGLgIa5w=;
	h=To:Subject:From:Message-Id:Date; b=gnYj9IecMJKPNwC3LCmlGb9NJ6nkYTTNiXkXkvagDgvbAICmbgQ6pjBiKasTJUq9f0XolvwvHKalF1GA2+Xo2qzkr0hNnEvGHjxmHjWOG0xH16t6s8ttCWc3fJpXyRVZBIUq7MXXByah41llCG1ZFK8HfZv9f4kVQ635tUtn9uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFZjKjGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFZjKjGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E5FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770872093;
	bh=K1UjSMiH7XdZXGIJds9G5QU5aTnUmoZCeGhGGLgIa5w=;
	h=To:Subject:From:Date:From;
	b=QFZjKjGactOJnlBo25PNXhdEQXQBWFddF8jbp/vPyt+BxOypjyRVFSYo29zlYs+UN
	 dZPWjsdHBmDSbOyAL7wWjsMDMc7HhCMixMQHHhUVQzMu02GRqtk6Yi0r5trm/BCs1P
	 9Zn8qjzfWWECFaZtWJcazBNTbWEirS+5o4+z+7KiBoiXjwKrUGJxJP436R4mcCAb27
	 bBAYt1/dOYbKuqpwvnPmDfqFjvwXxWrw927f/hmtgsxnw1fGVLozvKAaY/2m3hgQvD
	 UcotHnwz+TtvoK0ceUjkX0YuRDVVs7joYZ5lTULbDaHAmtuTo9xzyF5uZO4ydpZdiH
	 YPQxsZAk4sWtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A1BEDF032
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087209359.8747.15823448269689383222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a3dad68d981dafb2c8b0c6b0ba4e8c6073c50784594c5f5444ddb28e167521
Date: Thu, 12 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770872093
