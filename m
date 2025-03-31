Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308152144B7
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743432594; cv=none; b=CzrqpypPqvkZ3RoPPhsYw/X0Eb5woFXZThJkFYKiGmDBDxx+TN1WXbn3dBpp/xYYlZd5cfZJWDU5X883NRocCfvuhu3CVHX0QzrPr6zKqKmdF1/jokUDtyZI31pP6OC6yXkeppaAOo/VBtbB7dWx7dmJQAqWmICu8VjBFRukDtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743432594; c=relaxed/simple;
	bh=dJsJHL+P/uCA85JYT/4PgDcGD86nPOienVnllNg1JMk=;
	h=To:Subject:From:Message-Id:Date; b=Xfa3c56bHZpLneXoN4yXSfIzOhbtHMzJ4U14XZWDK3eul0JrTWBBo28MW7UKa0j2SlPWpG8yzDgzuGB99aulPpao3c+TmtHHJtZEhMz6OuJXBZE9h7UGSrByD3lSWC0vbeeatEXPO4XB1Mv5fNRaKGWJ0XX0aDzi6JnSlH9NgWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObneIpKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObneIpKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8625C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743432593;
	bh=dJsJHL+P/uCA85JYT/4PgDcGD86nPOienVnllNg1JMk=;
	h=To:Subject:From:Date:From;
	b=ObneIpKYpJeEBaA9BkSVN5rLVIVNjqo4+OdeZynYJvoAe6ZAyQwZBclFjEM2sV92x
	 MxdYwgyK/oyXo4sdTFjex293lVV7F8FXpK7UmPiUJqDKIXauXKY5ZlCggkU/iwi2xP
	 Hz5Mekngt2bSycR8h7DSolZBRAqBQuzsQ6Q2gkePZvszd0r5ihF0VqV64XgwmJ4InD
	 +RpqX2oqLeF7EgDKLZeWnsJNx45wGuyIuqBLzU+uZVVOoR/O+gKUfSeEl38lYnBlbd
	 q2YL1Kl3eK4x8wmpgTCtzoXMO1fGpSTpJ8tR2RJY/B6t8IZ/EQ+raHfyXLGvujKS2f
	 IjuwdiCdNG5+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97165C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174343259360.11499.14557596475237853122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb596901cbdc2136f88c40294ee2ce31cbc456db9d43263cda4e6e36eb7de60
Date: Mon, 31 Mar 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743432593
