Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34D1195
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746187193; cv=none; b=Q24sasg12LQW+bNm5v1YXcU37jx5xdY7RPKWOUGIXh3sbHJoKGBUCKwyx0fdyKVRhOj5azl6ZHEvckTTlxept0M61qBsHQyL/mVwbMpjZIiKTuGu7aQuX7jo7GAIloixt3lzQ3nGEDzRpui0oVJqFpWjGWr5zccQxN0gslwxAg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746187193; c=relaxed/simple;
	bh=D73A3XwB5t1n9PA6LTXuwhyZL1kgWW0ex+sdhICeXBI=;
	h=To:Subject:From:Message-Id:Date; b=H/slby1KDPU+y0kQMxpZnjOjx7nWHDpKtMP+gscHfzuGUVSnwgaViDQgaLg1XqUoj7chbC+rsnoh20GJAfacydo903VKtBkMetYgo3p5Afb+VMku6ZHTHKWIieF65x7x3Z8UUjd4yJ+zmwDiHxl2I+EjotgSr05V1d3wlqx41/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvvguACw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvvguACw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD54C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746187193;
	bh=D73A3XwB5t1n9PA6LTXuwhyZL1kgWW0ex+sdhICeXBI=;
	h=To:Subject:From:Date:From;
	b=VvvguACwraRqdPtGgcMJmVLthuExPCBi2HLad44TkH4O6nyZ0RyqYtLHIs9oXgHhI
	 4eEVgg9mvoz7PNGbYcOuntUldEwjpDQ5q18yj0JRHsedmn46zYYbN9d/PjxcTfydb6
	 iBH+mii6/jBwfMN+k004hV3UkySqVhB8XezFU4peEmEhohN7Syl6pYE4bcJ+pniw9Q
	 i35LYv04gZpk1QIw37P6CRIx1o7when+Be8BCUjOcsGgB30b5fgt2fy9chPRQzHJUb
	 I3ZsRZpWQ2EFR3L4PmUpWeH+nAAuDynoVv1lvqfCtNyahsUE/ezKKnQobUDEAIDY4h
	 GmEy+NubsKg4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91321C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174618719357.11991.10673495019863234163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b40d286c05cb6b96fda4edf510caa6123d98390d37c96986d6130510083e87
Date: Fri, 02 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746187193
