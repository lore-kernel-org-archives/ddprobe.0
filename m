Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3329B39A7F6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780461874; cv=none; b=piovfqkTooZ2O6YjwftlRuSjdkWMiExxhCvDipQTKEV9+EGGGP+7KuHvCxwA0vE3SoQRBJZiyr98fo3oP8AXq7QQQaPgcQ+81SLmaXKIKCBMb+G6PNwVMwfTNloxX/czQjUcfd5nnQXj9fQcJAHzw86d0eOB4SayTiO6i5U2ayw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780461874; c=relaxed/simple;
	bh=6x3GpaWWtRv1pw+VlofDSiDp6fCFvGzst+/QuD+O0uk=;
	h=To:Subject:From:Message-Id:Date; b=WFt71gRCDS79gGr+e3Z8yMdQZOn8Fx0TZFQxVcnsBRZ6B3KsIq/N5S8drEREPMltdjFoFBqqMOolXFJDZ6ePiI64+y61R5zrs8LOIprsuNH3RfBFjT9AwDIG64y/jPFR0BzyuPhNVAA3RkqjlKoUYZGwGFSuLNAJiS+sh+ACXBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twI7xHQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twI7xHQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A66C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780461873;
	bh=6x3GpaWWtRv1pw+VlofDSiDp6fCFvGzst+/QuD+O0uk=;
	h=To:Subject:From:Date:From;
	b=twI7xHQj9iZnLmwLrT++NOTwFXdMBB/S6/BlnWWHa23s+/ZcVR4s4rzcGaLAOenI8
	 BDRls8RU8wmYTZZEgBOALAQEo909lPT8VDxaUAOGzQB2XH7rG3Bn1zZw37BxiNOgA/
	 3spI/5CN8P8noA4SSfnDqt5wSQv78IMjVHc9blugZegIUELjXFm5Qk1OPC38oG6Cfy
	 YUfMlzRjsGZhGT/hvXp74/yZoFht+R0e54FEkWD+vebWpyWTJtZ1hNmIN8DZIQLqiL
	 WgUimgksgfXmE7E00l86E/FtG7hWvXZgJBdAhcib1OZJLN8qwDfL2y29GSvqcZKwKY
	 OhyEkSCp5a1dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9186CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046187368.31992.2207999002244928924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea76de92cb8ac1d39cad3892e74c1425c10e52de27729fba94fa53de5803ac2b
Date: Wed, 03 Jun 2026 04:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780461873
