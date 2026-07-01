Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 711D725B08A
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782885514; cv=none; b=m5CPr2lvQRVBsooj9NovyEGSYkvy6QfSsQnji9XFgTG0RfLS3rjDLyghZFTgzPos3yeq0DhwRSQEwSBObx5VcH2KvacAAkng8eNqzUtIGs+u4zHUkLqkWHUq4wuAPdfm24sexRQgKRbB4ZZAQeZDRJCAx3rt/+lB7NGvreSn00Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782885514; c=relaxed/simple;
	bh=BvwjSZY42WO6V8a6Ca9prfK1ske+4+PJNg4W3Wz9ahY=;
	h=To:Subject:From:Message-Id:Date; b=lo4ZgyM7c4fUdF4gkuUWUNe1Xq8QEQIi2q7t1gB7Kapwbi+WG5lynV4hPDuf/1WI5BImeCtTPdemX5xeR05NAECFimVY8Vo4hzJFvTkZcXJbWl2oOU0NEyK6j/Hsy2IrZaFQMZRVtN54v8OeXcT1UQZKevl72oN0fXNxsoYA+VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4uJ+XUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4uJ+XUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9B0C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782885513;
	bh=BvwjSZY42WO6V8a6Ca9prfK1ske+4+PJNg4W3Wz9ahY=;
	h=To:Subject:From:Date:From;
	b=m4uJ+XUBto/swaIP7+hYVa8CvCni8FAi4sNl3hVR3dAkCojUbvb9hjppsQz9RtCZu
	 thMSvplm7My9Xa0Q/r0iyvnWki2tExazpB7eu2LZJRr/YF+amoY9NddQc1YwiY67IN
	 tesCfKPhyzLeWb35DGbtz0sZi4nym92xjhVLf3fDZN6KrOLsmiJNMMUm56arTOv84z
	 cstraEiYlr9JLjQUpo+bd3SOQDqqpDuYHvnPmyPQJWivjLN5HqlXVYy5i7juQ+dXuj
	 ddUZpa+rbzI8qG5RO86k+tuQ6EPeiQOldcxUlFxyOEiFkt0i5287xyeA8pvFbhWzM1
	 yJg88xnt4yhdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85ACC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288551368.24796.15131176383930024270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301bc613d82b42eab1adf9c4124228a85510622d5959ee15edc49831f05e16c2
Date: Wed, 01 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782885513
