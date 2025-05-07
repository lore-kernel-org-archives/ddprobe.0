Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2969128A400
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746636594; cv=none; b=ZdkTwsrH9dijPe7PQc/e0fgIBFu2VgxG7IHPhyx2M5sU6LbfxIzXcdM9n+e2yKMrDJA2w6TtmQ3SjDDpzTfswUVAwTB8ly2pd4QKLFG4QahR4f8PsVH0PRpBfZfDx+ukq8nlFKvyWEFD6dvQPAdo5er5rnsMe0M23qKWVkU59Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746636594; c=relaxed/simple;
	bh=wKKXUS5tJjSUNDyynmeMJeb4PMkwH++Ro6BQ3aTgaJQ=;
	h=To:Subject:From:Message-Id:Date; b=afttY+42ADufa+aV41VGSHSFpBa6HAVqerLK0m1RZtmu83FmjPIGtt8OdLN8+v4oh2NcjQHdmZMx4hH+RqdZtyLX3maDRx1I00bPsgiy/f/9a5x87sy7LrNWBnIKVs1KX5c64g8KifaqGfdvcCwEMsvqwOzRn4FXydKqIWa3VcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jfumwqyh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jfumwqyh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09DDC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746636593;
	bh=wKKXUS5tJjSUNDyynmeMJeb4PMkwH++Ro6BQ3aTgaJQ=;
	h=To:Subject:From:Date:From;
	b=JfumwqyhKfm9BTjg2txqrul376/6kAifFjrZimIrzmyvF2hK1KKzMQDCtbd3jDq5A
	 oPSlBrLFnXeJmh9T7L/ePL7to++mztfrqv7K4j3sXQyzLRBe/9T7Ee1AcZMfMssftZ
	 esjrj8LJ2Jh+U6ahjoNadRs4+vFPGUd7BRsbzk9v7TBYbE0TLg0ce6m3O4yUwIXP4i
	 Z1m2Z1dD4boHAA32Rjhp0kwKmwKFNVpQfpQxypmikmdf/9aCogmi/cGkaXFE2XPpJs
	 WnCoo62cubR4bJhAjLXlZ4IQGlUZab8yiHHhRgDRGqcPAqFgbofAk4axvmO3w7UjoT
	 5/H1C+oGpma5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E555C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174663659357.9610.6673883791196304692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3e9d0bdac8e0ec4258fee60022aaf242409431cfa5ea3ed4240c6be9fe0797
Date: Wed, 07 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746636593
