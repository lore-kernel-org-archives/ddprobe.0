Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E2D47DF94
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772549694; cv=none; b=fjrWqgiY+NM+XBcYAlqsVKHrdz8aVjFJYlEbvXAzQntFpNVH5Va+fwT8uluVwRUqKJjcR7KVINVy1Tr1NNlsj19+TkxMat81e4pq+SWw+JUhA+B4Zv3GYqO1nuYVnSW/4yEJy6sutfBYviU17ZhDcN46YG+B3gFPMzETBEa+W0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772549694; c=relaxed/simple;
	bh=QwqGpPuWXgF6iBdzRqn2etrX4E31VS0BrWGANMEzjVM=;
	h=To:Subject:From:Message-Id:Date; b=djKYwQ6YFj1SlccPjG45WVyWE1/WEXpUZqtF466lX3zGQ3jbvYn6ClwZrAijX4xqSjzUiZyrdESrcIGbJqGwaZCixSOPlfWCwzgh3O3EwvUsICLONugy5WkPZu8+1h/xg0qzIjnRgVX9H8rPttBnDSpTbd5nKqcFuOJISMkxYlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xaf/MMP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xaf/MMP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EBBC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772549693;
	bh=QwqGpPuWXgF6iBdzRqn2etrX4E31VS0BrWGANMEzjVM=;
	h=To:Subject:From:Date:From;
	b=Xaf/MMP7Hzi8ALu9PoXzjkSeMpzLuZYovzNhV1V9QWNcxVI73puasVHmIKTs0lGG8
	 vmMl0wgr7SVCKY6IS2kKTDRgZWnmVwxXNLVBIYj/4LJEUfzg2KkNmr/rH/sp2arhF5
	 +PPee9Ya9rpg7qazzsnffeGL7QhK6HJXbKzEA6VlPzR82a2JqRHRQ+2fSmGPzHhFks
	 cwHWuYnuVtaFiyszFHG3fN0v2s3lT7DsmO3okslVeE9QXDSTUL7kTsfABaBIGVhbUh
	 SdcsorGU6nm/mQeIAqsOJE+pwqgBZhC83kZo3HL27682S2gK7XL4aK6WxXfk7c8KqD
	 Qf2wzeNiJbqew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC10CEC145F
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254969366.21472.533624240452152681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe5c8c65cc17cdf8b1026c8d59a648b82e91f6b0feffb50ca7ef53bab334d6b
Date: Tue, 03 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772549693
