Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C04240DFAF
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775174734; cv=none; b=owb3KkyeNDdzZxKCI1aXozoDroaWQh6L8Mana+dNELlm95E53Mzkl5EfDFBhM8ASHA4NlBvJN2aLvDnwKX6w7fCD8hp1zWI9LX9fsmVh5E0gE8dVM699+WTYnxnWtJOBBBtswFcm/fhc6RzgSIxUiji5FIV12Rrke0orQaJy9WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775174734; c=relaxed/simple;
	bh=J4MJ0zTErNG42BI49qJWXUp/RQbQj+LEDXxqx8HHYSg=;
	h=To:Subject:From:Message-Id:Date; b=Qq5ldkjdq5kP4PqfSQkT6aUk90kkUSGWiGqB1rSykVEnTnoNFmHikwSmdp6ogZaHWY/CW3Q6niACEZ25DLYhe7fknf3vEAoflKmrQLOGy2zZt/FGNf35qRfJq2DVboidhL6uoBPRf9WeBCKd+AGoEP09frcOOVdsHSNLj3lzDLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObRg238+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObRg238+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9D0C19423
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775174733;
	bh=J4MJ0zTErNG42BI49qJWXUp/RQbQj+LEDXxqx8HHYSg=;
	h=To:Subject:From:Date:From;
	b=ObRg238+wSQaPMG2IqsjMpJhSCIKrw5OA4lU+oqmYOPTNIcrzKXo1BO12dpB0T7I0
	 t0hddVRLJtzvSL11DubonmbkVTBa+MlggUlVUgNxBp7AWpKQpf6ZQ3jAZxlXDGXiTJ
	 2MIEWfUaS0029TjVrdqZcXEEdVf3YkeMeOL03U3eCIFxCm8pokGq64P2bkuurONjL2
	 9gfGz/Pzbq7pGtLFCgIxedyouwmnQUJR0be3d9OdxbwubkJY987oK0fkT7QhbkDwhO
	 5SQPoj6DTSzmmy8S8KcDwlJLKewUUWpznX9f+qcY1NI6ohXD2jsrjOFco9mto+29LC
	 6/0Y3uqKQe3FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CC6D6AB1F
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517473369.5788.14033745725670016787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb7a7029b2b3c38f9aed0aaeee568bcd8439d484acb549350de32b0cbdf93cf
Date: Fri, 03 Apr 2026 00:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775174733
