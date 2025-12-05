Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E83316189
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764939174; cv=none; b=ty18xgfyTCP5VgiHXjyn45dr7CNvSkcqdWl3J6iIetcaZE4jyplRdw+PBjDSk5zhlzrdvHj35wsR3mzr4UvpJH7p/4Pw8Q1cdccNnjUUuUF386Jyol75KrfUQVRvuYPQpdpF/7CkfLmoJOwq/c3vv3xVaVdO2jSJ8vRlD0X6F+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764939174; c=relaxed/simple;
	bh=rn4rOjAiiMhB3VB3AtZEb+3KuOhZpDQoYv9IHNzxaYY=;
	h=To:Subject:From:Message-Id:Date; b=az1GuMVNcGVv5EYVd0JH5lQYyTmAFA+Ko3JIUBitBmD7YOrFuMA99tCmGJaZs5HkV9qj4kDxtYGFEKu0vICzzyB7tQcZpTLdWmkYJCYbkRDY7kqe8+v7384xMXftRwseis42IU5rOAHQzW3n1I32INmgIvVRaO8woQ52xc6Ro3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RA7/DvRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RA7/DvRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AADC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764939173;
	bh=rn4rOjAiiMhB3VB3AtZEb+3KuOhZpDQoYv9IHNzxaYY=;
	h=To:Subject:From:Date:From;
	b=RA7/DvRxMkZGkmMRzlVk20PZQYobSGz2RsFn5Z01RtZQz0EmzO5LQ5OuKh9tjlPBp
	 HMHBONmxl94xXZEFSSlzTR6vdba2xfztrkiXhm4YKxDcl7M0j0ymFPrbjGZ0XM0J4w
	 xPSY91ugHJ+3nzMkhdGtME+E6XPB45iIchXaQqkCr3hP9+uJG+O9G+SWYo0L2P0dnJ
	 9a4eDqjSyAA27MTmB7G4WXyZFd4LaEx2+nm73cNVOLTlz+eYY32bM2YUY5UpW0Mq7h
	 iN1peyXP5a5LlWuG3S9+W8RF0Vd2zXiyyeLo8OSRL9eKc+0m40Tey36KKhzljmDrJu
	 j+A6u0QHekBYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9414BD2F7EE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493917359.19096.17224841552214084329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b87a7c52011ac2a20063ac99cf9bd52cb5c8ac61b92b00844fa7de69c79084e
Date: Fri, 05 Dec 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764939173
