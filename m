Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A44A346A1D
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755874794; cv=none; b=Ij3g/itMXf4KR1lIbEwWOgK+KZmgEik+YWYaKQETfSdvpN2EQVmXlwIQLqJgT3H7ueRMPMuH3qMIwlLPZMPZLsbuAq98tN4sFhyRgCZyJtb30q7fVAZiUBiwRjyLge46FJbDr5EXTwRKAc0+gzK0hR9aOBBvUDcwIyDETMsuSRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755874794; c=relaxed/simple;
	bh=pokzwOIobOpJJBRACnzjzt5LwighFB2WVo9wxUtT0JY=;
	h=To:Subject:From:Message-Id:Date; b=BWPbqIiR0Dj+d50/FsNsUZo+MpqHjyaM8NEbIUuG4TotApglzVZHkYKtelgjJhHdau9Prmx1oLuCakaJNQ9rYSjwfdIrJ369Mjtchc3/bQDtALhOepuDzXdxvIY5Vk0/pX3I28bIG5/b5RVFmJxr3eeOVGSlQR9Mi3Uv8W7e6Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZoSN5+J4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZoSN5+J4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAF2C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755874793;
	bh=pokzwOIobOpJJBRACnzjzt5LwighFB2WVo9wxUtT0JY=;
	h=To:Subject:From:Date:From;
	b=ZoSN5+J4QS7T72wGuO1+QmA8fwf4Ukc859SH3A4z+JUmkZ2ZjM2nG19T5uRXlIx68
	 J0kL8VJTzYW4an0b74f3ikv24IvovEz30wxsNHRhfmBCJWp1rII6yGysuexo7Mvqqy
	 nzZPdYkoFqwcN0s6xfqZSirmSQ2St7r0xMt3XKHi/KHHnHqmx51cwEzkAbAtOZYtp4
	 tOXF3ibEQiMPHQvHIhot15aqB57oPoX9tPuHolYAGMbOz7Qo9dJ3cSo8mjX4na4htn
	 UdoxvWOdCO0t9+UxB65CHS48AgIbamRiP8JhIvvPh7dfVXdAFA1KGVLmH/EtcCHr5T
	 gpO9CYKyPUhJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E8CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587479357.9475.14987652204292011253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1931e8aa1ba43abd77e4648e7f8add9c9beecd352fb382ebcc0e7fa7c61b76d3
Date: Fri, 22 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755874793
