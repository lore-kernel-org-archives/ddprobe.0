Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CAC344DA2
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789605634; cv=none; b=COoAw7SXJLfMQ8fMProbEvyuA8YJDw7/8UqCFb7Y4xVCunoNnDsXiheA1/gqBTJFPhNyi4XaoX75OQxXTe4j1TmtCQR1DGURnvKzwcsQPuvRtTHMNNgC5JxkcyzchMovL/4nlhUSFC6Km7f2/cuyuAsSwmeSDTnHTkdW9d/R3l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789605634; c=relaxed/simple;
	bh=QgC8ln7S6N8MAdq7+aq2jqnocuO4jqrYz7m9J7jlQus=;
	h=To:Subject:From:Message-Id:Date; b=qhxNxZ2vHyPGZYHfwPmtXKFp95N/1oIZWoM5BewBbL9RgHPQfAWiankTAhVJNDprSPD/zBow56AWnLio1yjAj5iFINXBQ9xB7fT9LpxibOZueSN646ZBISTCC54uWP6t5CnBSxjzI6ng1kzByu4nWzJy90mfb526TYODjXTZpRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJ+6Kxms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJ+6Kxms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCD6C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789605633;
	bh=QgC8ln7S6N8MAdq7+aq2jqnocuO4jqrYz7m9J7jlQus=;
	h=To:Subject:From:Date:From;
	b=fJ+6Kxmsa4D27gqxFZL9WKh2JP0vmMkqqFRQ4tN+OTadauhTEatY9S3PFZe+kz3Du
	 12FSAwrp9snONT1S1pjRy+BH/T9ZXSUHir0UkEB9BMuVyVqM2PLfROXfQEWr9sDoY5
	 23MJHIh/LXlUeOZ9ZINQlhwLTF6tvLSHrGNYrqnGNqTT8OTd6bxjhKBI3rcH9m0FVq
	 sIMX8xTC6ZUgLcGOTqitok6bO4jvKy0TaF4rTbukalDl6nqX5SSSW7kbsEahexufSI
	 604FvVy4tvQRLtN8tZY9+h5k2N/9gkNN++jGQ54/JYV3TueGfQoF+0E0Wr1IlpElxZ
	 1/ZI6KNjllZ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4CEC982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960563369.19301.8546936659040545152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21815131d7d51011ad94e35e9a4ef03800536b3e3f08b2c83f65537cb322319
Date: Thu, 17 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789605633
