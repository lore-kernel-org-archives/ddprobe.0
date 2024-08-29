Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAEF4963C
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724912154; cv=none; b=Jn55+AYC6sIRcCpOt9zW77sIk4P+SzJx377SN8c5h//xU5LLUpKWEo6Rni+kowFVxdLFEmoH3MX0oI9a4nQ9BN8VYjprroDWegTcsGQxY5ydHROWqMwa7pvLjnmnf59WyOOyZqS8lWh7ARA1VKanz++Tlrbo268+Ugo4g9LN0h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724912154; c=relaxed/simple;
	bh=hlue1fvL7CxvlytROvbqgZPY1eupCt8Z6Ait923l/Eo=;
	h=To:Subject:From:Message-Id:Date; b=DmmpQeG2eCNZFc9OlCBj9QxHIcLZbwTVwhQO2dD1lqueKbsIhswoNN6bnjZXTBgTgFlJlJ7MH0iucIELmmpSe4hV2EcPonJC1N9FcYZc5TJdaIzTLLfOhLaRsYIx5FBnyxjBS8o6eFGQjJUYP4WavDxan8ToUVOp0ehIY9KfQtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWR7C3ZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWR7C3ZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85A3C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724912153;
	bh=hlue1fvL7CxvlytROvbqgZPY1eupCt8Z6Ait923l/Eo=;
	h=To:Subject:From:Date:From;
	b=sWR7C3ZJxwts8MtkF2ufqV4RxjR22vHj+GxOezZZAiZGzG9wGOXfM+zjj4J1sHyHP
	 PM9i1zd+LJLo0Xzq+/riKXlTQ94O9wvjtbNIc8SUxHCjUNDxVBMV9HYE7cpTQvY9F9
	 S+786WGSB+2Zk8uu735vPkZOjzeswAEFbhX8LWZfuZJcwmQTyn5LBDkNCngYdiYVcM
	 LJLlMAu5qsVVRjTxFnyAEIldJrkP8TwyimVUoQlWuTGRBQ3mCTUV3P0WonD4isQpRV
	 JMWttigIlyf90yHPAhURgGbPZBK0GbfoLB/V4mmn1NnlW7ZAiLyW+TMFtAm3svcnnj
	 ZHGn1aWoTgVaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969C4C71151
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172491215360.24518.8872378850706011743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73dffc082b23abb5be860c529a4448990a14f197a89b697b86c331afed9aa0e6
Date: Thu, 29 Aug 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724912153
