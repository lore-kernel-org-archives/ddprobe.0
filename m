Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23165202C48
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775178334; cv=none; b=tf+FnyE3XBh1pYhnoYpTT7FxjTDbCRAt0nMjCtMfH47PraBymUhfsUCOUfBRmVaflv8GA4UMD+3c9VfypmtneNt+WWdMoT3En9mOhbYgF5Md9rb8YTkLKKfoVEQI9v+yt2yhwGPxok9YGK4T3Ry83Q65hLXZM8ouEKsTH7O4PKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775178334; c=relaxed/simple;
	bh=lMDeadGw0n5k6JWbFbjWJJWN74IL6C7jxtW+jAqriCo=;
	h=To:Subject:From:Message-Id:Date; b=hJEuGzjP5dWPNCfNjMZIqA+I6/4wtqeGugjfIvOEsY1xZzoWIqV/lkEFmBajM37JXYXFkyfQbzEZmQ7DSrfLq34StKt5iD7ksZ43jDA9aeyJVKdBRrkFy8pZIALy6dnMPv6q1+UnAU4O3C2fIxtXeadAFG1drHb+/KkcyBYMoOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNzYZ76E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNzYZ76E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE30AC116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775178333;
	bh=lMDeadGw0n5k6JWbFbjWJJWN74IL6C7jxtW+jAqriCo=;
	h=To:Subject:From:Date:From;
	b=HNzYZ76Eherd7LPk3rKI8nsOcCnUHDA8aDh7ckP9mdhsm31qa/u1uncMDnnN096k9
	 33Z+k/EuihDPj5OASM1vt8TC8+4PnPvvjr6vNpjuYwdCALzK2WXxrH/0LQzzERTXth
	 iqfouE5Gu0oqQg0fan9I20ylluFpnOJOyVnVj0/Y/eKTGONY5pj7IIqyVw39ZzQn2g
	 P2wKmR5h48QJvufRDEld5zn1F2itRT2gwmm1A4hDsINZepqdNQSILuICe8/AX2L9sL
	 BmMxXkzUPZ/bTpizYWfYNBwPYfUGnPzNWPjq98ndT7CIRj/qMpurso1GjXEEY8blxo
	 wPj9npmCxjYzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEE5D6AB1A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517833369.24083.7822079596159214470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c6f78ce139c30f18f018984a777c6025a1dc459ce13723db65e739c8082482
Date: Fri, 03 Apr 2026 01:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775178333
