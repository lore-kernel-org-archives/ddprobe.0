Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404C1AD2C
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746297594; cv=none; b=GlK1RAkvC7eP1dY/1LqBM7JctmTuu1Xayfy+Xw71YdYdCn4IGhQDjSN6lUF0BblcjZWlkYGBDM817/oMmrvHHGqvbRmNOlfrQe30Hycc2tq59HNwtHQV/RMaMfrBz2hl8cGqKHjDcpJai6/UG6HuoX4WFTRfK+qSXy1k2i8zysQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746297594; c=relaxed/simple;
	bh=pQgMzrXzVgfCO5rLNGA6mkvIljewlSZKkuB5440S8UY=;
	h=To:Subject:From:Message-Id:Date; b=H6QiQDyS0K2E6NUOqaaT7TExgtAo4vDbwPM+HHZBj3q4LWMqw1eNT07lhd1aGCyuWfJAwp6g4Pv37GRpotnqPGux9C+n++htH1w2PHz7nnwBBBB3Dcs4eSWkzBc8MdpcTSuENFCcWYISkkErej0tSKXfp9wqDrFJnBAXdUE/9ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6EqgsLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6EqgsLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5205C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746297593;
	bh=pQgMzrXzVgfCO5rLNGA6mkvIljewlSZKkuB5440S8UY=;
	h=To:Subject:From:Date:From;
	b=s6EqgsLLsykGW7ZNYaaXfqC4JQRzW2BnYHVfD4wPCoqO6+mkpU/KCqkQXW8J6r4ZE
	 zziq9selrrrAAvafDnEwmbrsdfioM3yHI77XAHNdY6ICVEVgXkGDvrYyI1x8uVvfmq
	 goTaP+ICTLH+8HJAyH0NF0tKJKjw4nO1AVkNazz+bjWg5DyDpLau6SZReO96rUrNra
	 6qHMqusakNb385HKAz3WyV4gRrei08suLJQtBua7fFmqOYYhy3s8M9YA6eWW7tqPU7
	 EP/hI2SxVhCrrcbLy59rJGH9wVICDTM7rQwObVShxryJ9iZnYIPpB8zvNjWUu9vz4L
	 9pEuvK99pJbPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9344EC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629759357.23897.1601312624800296034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303eec672efb32d540da66875f1a0d0900a6f99ca056633d5dbdc9da132e8ccc
Date: Sat, 03 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746297593
