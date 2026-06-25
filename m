Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B623164AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782415654; cv=none; b=BVja5a75qNtCltT9WzzYAhY9/0furE8HvUNVPaVyFNdncagAvB34PucdSfWUt+MIwTGNzG4pU7LZvGdellCGdDLaxxi5tBBZkz+mxfUUKfxNN7bO+3cczAjqsULjVZS3XlT7q8gvWICrRlUJu/sU11fHta390/Uo8J7usaQE/tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782415654; c=relaxed/simple;
	bh=VdANY9IlWn0Hx1Bd9joitgOcA7xjy3xiukKKgf+lM8U=;
	h=To:Subject:From:Message-Id:Date; b=F4dKAojUysDL09NUHlXlAbRCceW7qAab948VPMX7F5IjlYOFNIroteR3HZl+r5IIuoB9PN7CksremZo1C6RJbtyjcJjRP8xL12l97XZYfK1ES60vxaHqRSlBGo49mXq8X6fGQoGaeYoikzFP7YIceijBRnU7O0ODXhJMVfW+0TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyBt5WEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyBt5WEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06D38C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782415654;
	bh=VdANY9IlWn0Hx1Bd9joitgOcA7xjy3xiukKKgf+lM8U=;
	h=To:Subject:From:Date:From;
	b=EyBt5WExDTgBEQ7Kw6dXqor/LjFYZr8LlokZrxxFEuGGqQ25U0yF0w8EPDc7s72Vu
	 lBOSP5r/Q0htwTzSBV9cXGz8Wr6wyQA6kzboHWn7SjnTKYnliK10YtaNucw4bYy6ty
	 C3SByOEthpp3y+IYunvhoKXwdEbe4mBqGsFaKsyb7Bs34eFEQ9AL0At/nbAZWWQ6/p
	 rAaPsk/QsD74In7rkwOSpZDyIMU0S3KmDYvUtzkUxzPKyQbYuwkeOWH8WmISunary3
	 zX6/u+J8YEoo7+RbugOhZQfWUtXxS9F7kYTkjKX7oDl1gp3+CbJt8RvBJOfYtkMZi0
	 91N9WMHkLjNnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD830CDE009
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241565374.18164.10713600902797859076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d5c147a0d129366f5716e537a73df40a91a573f41f171c2c07ea641d88067b
Date: Thu, 25 Jun 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782415653
