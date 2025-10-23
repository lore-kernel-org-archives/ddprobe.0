Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A222327A3
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761244794; cv=none; b=GOpQSGDBH4TJgki4x+VffoC2ZZqCyltb73zTg6vQtwYUaOPJDJSkfTJztz4YesgAC4JQhu5YJyyG4nIsUF1q3TRbphbs6LIbz/Sop8T8ypnfIiy+YyeY5rIZvLpqnXLoPa/HSwc2hZw41F7K04an+rfJQJ0CUhsVDtKI9ctieU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761244794; c=relaxed/simple;
	bh=nCQQEpX4idZ9Gbz56f4UsUALTrZ2OXXKH5nQtcZF8bc=;
	h=To:Subject:From:Message-Id:Date; b=nnFfdHibqig4cVpX1sWmaDNv8tPJvzrxh0iuPAUYW8qTchStkVnBeRO+F5EdXyl4vSyu6EwusdrcGqCv9y5v+/KE/TvcjyEhZrpdPlvaAwSVO0bCYrZ03iSXrG1KrPIz+F4bGtLvNzwLBeranJL0y8kiJx6VbclMWHkYv9lAklE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmFdOnn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmFdOnn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8227C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761244793;
	bh=nCQQEpX4idZ9Gbz56f4UsUALTrZ2OXXKH5nQtcZF8bc=;
	h=To:Subject:From:Date:From;
	b=ZmFdOnn/M1xBnfi+asVwiHZAKgMWYTMf1OzPmLA4ghQh3RjDQafxgqSJ/zlr+aL6b
	 J8nQsTXTcAZxLFWnCodZXYWr8Id/28EpEvDTD4d84APtaONKlB3OZFeLnhOZOQ74zW
	 +VBCRnWt9P/legwHPxh4Tad1PF65JIBDWPYc1vSfktzU281ANX4+jJlz05YSkIzyeb
	 vbudtwJBfAbx+qdleiX+nBUijzW5+/HmqtlhCQ9uWu22xSiclJGhFaBzA3IAdN/sqz
	 9Y5C8RPlIEMp6QoThHUNbeww93P0oSUj/ZNzX4A1DsgV3PSvx8b4o/odFqRmfSHW3w
	 R7ECXl7YX9mzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9470CCCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124479359.5454.2391376659185130910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deaadf0d6e36ba5d74e7c1c87a0aa560517288fc4491b6724c5d6f852988d7c3
Date: Thu, 23 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761244793
