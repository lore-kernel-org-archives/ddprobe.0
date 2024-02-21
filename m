Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA04A35
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708496897; cv=none; b=NJE17kWkzofx3s8VlzK3+U0WmzdcsscR+TvUEZholwcZNgicHOLjvvCRJ4kviQ86yE1/cC5R5e7IaLCO2tnx/1w6QFY5MsYQ7v99diHJyQ8L/RkagiZ34G6U4LVGg1ljJnUvY5gYhMYJVg/fggf+Due+W+5zV63iaxoefwL9/BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708496897; c=relaxed/simple;
	bh=0zx2o8N26LcH8vo/YX178hwJG8mp1OqsoYK5CPQkd4M=;
	h=To:Subject:From:Message-Id:Date; b=ITFQpEcECIoLgpRtHRn04tC9au3iuArDdzjnjZJ/xOdzylScGwYbpH+idrjZnDawZO8pWBzCpEBFihjWZzmpH8VOv/qgSTtql3RBjjMdV/sRj1xTCqavD1g3ixR5Nc7bUEcv7pAr5qZQ2x/jzRtL4I7WNxmZLwBt5vGqOxR1n24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBriGQIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBriGQIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B7CC433F1
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708496896;
	bh=0zx2o8N26LcH8vo/YX178hwJG8mp1OqsoYK5CPQkd4M=;
	h=To:Subject:From:Date:From;
	b=jBriGQIkKWHq4VQ6/XcZD5digK7ISgTkWkBrqZpu6StsJTihH+doaP1gumw1gnySH
	 FNaBU8P/aRGsNkAEu2mXe5vcrx+rbguCVl8p1pedZaIh86+kSTIk36zpnJL71Sa7H/
	 /Ugj/ClleiS79wn5dZn3TtupX+xcFmRX5xPJCXdBQItvn9KCliDyxaza5409NaHrYp
	 3QRkbsEslwYjTT/atKpBzi4e2d73Nm+HDVPjZuRzFtzuUMxcZGAKG/Mkw0vbJd+1Ak
	 ihFRoAxCLGjh3iFCKBgLsxD8VdjM28BP31kHS0HEXwqEr9kXjk6f6WndEPRY7R7eZE
	 fsMT+7csoGkmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6758AC48BC3
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170849689641.7404.18332973506975479131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd277652bd01f4b2ec56e2ee5085ec7c332d3fb5c608d4533c39061dcca8b031
Date: Wed, 21 Feb 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708496896
