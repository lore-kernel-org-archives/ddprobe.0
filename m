Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3141C52F88
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752786594; cv=none; b=Tt+a0jdveIY7xVJVpsmtG+ID4kSdqD/rkYJ/3QkqFXtGWoFux7xwWD3731+tEOEMWmP3MDr6u/YyjZ5f6UEbHEiHnbqDBwhkCD6EjstWuJVtOaXqWM6U1jz0sNvab1T9YjsW3NY4HJqgEtaYWcl/oKsIA7SkONllhPzcTi7MPyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752786594; c=relaxed/simple;
	bh=edMK+jkumlAYO+YF9v1coL0pR0KkuH9YT4f0I3wxfMw=;
	h=To:Subject:From:Message-Id:Date; b=cc1RqKlqsx3juQU8YCJuTbdxJvDm0LgDJhW/HCBMkXQDAkMdIqsL6ELpbI1jy0lOm2sUWI5nAgm3LZgb6o8/Sv+7gSjTuPOrOOhRu5hhUVlTWoVvnUqbF8OGT4I+WJbHZ3VKqrtRrOoPuurZGsr1d6G3L31BhmiKoqpjQ90pjCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/7v5eem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/7v5eem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D5C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752786593;
	bh=edMK+jkumlAYO+YF9v1coL0pR0KkuH9YT4f0I3wxfMw=;
	h=To:Subject:From:Date:From;
	b=q/7v5eem1UVou0BPEwLu0ESNe0LRBYqSi7akkQev4U/+GykkdcPMN96qcH4nBKKVL
	 bJsbAGIJDYTDRZJRkX9g+ePZl2yuo3ia3qK/vsOsdb+9/GChLzKP5T7kqaGfX/7l8a
	 Fm7jhst800iWYp0FoIL6eGzBNhvvnPRKDFuHosKuDmhI39rFaFEoqxE7x21WtEFLUU
	 2g0SNeaGHjOMMYTQORj7bzI/Xj77eYxEWjv4FHdpmwBre2iVClicA5rZ+vdDywzZu8
	 /kq7DAJ+fSwG93dbZSmW5hJ0qtkMmgtbWIyZ+/nyuDmelkgqjBvOmKjxodVmvhngrC
	 8J5EUiUml/IpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F8C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278659357.26261.6958955851963501964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0db161c02ec79ca6dad6d1dc5fa6214e5cbb9b56bf384bf60564daf46b7f41f
Date: Thu, 17 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752786593
