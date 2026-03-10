Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238302DF3FD
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773155694; cv=none; b=AuNrJb+HMUjus+YQnc9zpPdPhMIP31h8vL8anntIOVoRKyyAE+0rdk6DqYQCNJJ5CrcNhKYzkiGOKLf13gpOXOnwG58W1eQ3u/HCUNwqpZLcoD8J1n4QHGWOG8+MmJJHuQSpIHNFlH+XcFvfSb+4RLz/KS+dkxsySVpRgA5FyoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773155694; c=relaxed/simple;
	bh=FKJxLf6Ad6Qj3zHzyUmBLV3pn8OBBnVJuDlpQbdEtrg=;
	h=To:Subject:From:Message-Id:Date; b=MqcPDU4+pQdR5GutDhdaivdQWtGsp/yTZqFrZFZ4iGF644kQ27bUQw8VQlBWg4upZj8K1KwA2fu8ZBLJWV+wfGi98havkZAlI8I3E7TboTyH7YHV86Fe4uTM4WRXExpkTA/BOxwv4SPvYmC9dNtcDAFqGyOklBlNIwCL4ELHhCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GobZj/db; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GobZj/db"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6B4C19425
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773155693;
	bh=FKJxLf6Ad6Qj3zHzyUmBLV3pn8OBBnVJuDlpQbdEtrg=;
	h=To:Subject:From:Date:From;
	b=GobZj/dbbbX3W/1eoU8VADdtPG+S3I4aRjK+mbR9IcKvPB5k2NcvWJ1fC/xPlIjJ9
	 Y2SX7sA6rAWk0fHwFW7oFnOcSjv7o5QkFes//iUvRVR4xP0OTS50ut7h6FLiwAu8tP
	 YlK7N8hxlcvqYOuwwjotj1LoFgZ+ROyGmcMWzNDIFJVEanb3Ek5/MGXSQN6fL18I7b
	 ZZXzw3gPtAwRTet+Z5bQH6E7Mh/qmSP5n2yN17AuC7YS0mGfcUEvGYadwG5LAeyWAJ
	 v9xlLx9Sr7GFNBvUWT8gY5g9i3eiXiXgWvTdCt3mw7ZEFfw7szqyrVjdGefWxO+XiR
	 SRBv4s4avciOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956C5EB106D
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315569360.13381.8759757387703402767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c94be41e64eb51bbefb29f54506e0d29996e373fe09ed6940f508163e495d15
Date: Tue, 10 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773155693
