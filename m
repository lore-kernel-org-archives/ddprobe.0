Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D9D282EE
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750016994; cv=none; b=Eo00L392D/jGM+1sbA1AbynV+O280QyK92A8nIjEZOjhA0KYDdaXOJD5QJn8lcDZNMINUU3/NSwlt/aOit5Jdg9rHZLrhw5/W6heHOt880tbWqT3Qt0bnV4PDQ4EDQrVdzbi7rtIL8o2rjwMy1/NYHS/EftmuvZnvqSLwcwv4v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750016994; c=relaxed/simple;
	bh=1t2HZHxGbsDquQwghHFANd7BQFLByu3SGvXJayinPeM=;
	h=To:Subject:From:Message-Id:Date; b=EW7fAh5tMcTz17ACjCC7XqZCpinwZy0kzVQCJAJzYIQxTsDXBl9qHn0jM4iJz9ZV4CliJcRkCYohLR9x62agPx3wg6zaFQAs74Fpy9JkcY+JWrEtdATCdO9SmzS2n5S6/9wq6dZdvw3NsgHoU2EDXxrhWgNAXovmQKS8NUTOpxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhbX05UQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhbX05UQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB48C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750016993;
	bh=1t2HZHxGbsDquQwghHFANd7BQFLByu3SGvXJayinPeM=;
	h=To:Subject:From:Date:From;
	b=NhbX05UQzJofDy8PxxNNpdX58i4L9bGwDo24Qf0VGjQnZkJM7UuNgnMhquJMqGIgP
	 PRRG13n4cl2lR0Xb0ItKYJK/LgJjm71MJhA/+HlLqPFt55VrbPSHU2HrAFuHHDO5uL
	 0yjgWRcqZZjmU5IDaVE9eu5SjdXVAweBZE4c4F+iYXBTX7Tzfx9e6xVILJMROAuk3q
	 20eZcyrNRIJlmjLomXJwgRRSio/VYuVzlDXe1Fkq73ZMm3UDrRZMEsjB83a8e2h6E3
	 W5mxW7v7ehkFR2s/z/xItbLYg5zR6vj/3OniwTOaIrqk/xAXjIjqC6fdqYb4ncqr7m
	 lLrrqh0NijZog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997BDC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001699358.20767.1647448165683920246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375b162149ad1521f2e1c92e18cd1028ed408c8c8f5fe23ecf5d391119408bc5
Date: Sun, 15 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750016993
