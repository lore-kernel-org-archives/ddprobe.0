Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137751898F8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760896194; cv=none; b=QD7y7ZrjHSbQ55VPcrhFP8ZQedMe5gI9SF4Cyx2PQhG2KwVpYoGm8ULM3g9HBhd8zTF+kqx+sq4NTU+8xXLxShKtZyHRwiYaW1bTyfhJdgkHLCp951zPs8sjGtz+b+NcAaObSBoKAMxM2TYallsSkeYWrZza6iHAgHrK52sqRPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760896194; c=relaxed/simple;
	bh=XwGSm9J2H8H/ZPNHtROb427GpcLjmsDdMnYS6UUJHhg=;
	h=To:Subject:From:Message-Id:Date; b=ACEI5RBr5+IXusRiPxq/ZKfDLm4xvqAuVQ2oBkQZ2K02vTNgGPGm4xF4nkeP9D8sgMSV259sBIPS6n9v1qHP/9SK/JOkcgdUaCkxGLIQi1xld7Lv1MhvRU6QpBT1Ec9RpZXYYozI6TG8/LPTSNSxFEnw7bRphARlHVJhCr+UygM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcVaN9iO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcVaN9iO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D1AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760896193;
	bh=XwGSm9J2H8H/ZPNHtROb427GpcLjmsDdMnYS6UUJHhg=;
	h=To:Subject:From:Date:From;
	b=qcVaN9iOnJpSxFbtBqCX4RbbIXkATt5c+WCeuvUYg994WKxCD3o3+ui4tFxNJ6Rqw
	 0OgLTqAbOGCbcwqOs0AkYIYZ7OrpzaXXXFIx6LJupSLLEoRv+tFQwBoYsJfmv/ANM3
	 DTBOL59Gj4oTr4nu1NUa6iJ2t/MfOn0xBc+4Hc61ED5yyPKAIciUj8UUMe9UizDt9S
	 mD5QjCP6V5gbzVr0uRE/5nZLDIROfGx8AkFDCh7S72ZJh8RryjQpZ9+pfDUuh90LTM
	 yGPg7njs+sNQ2KnmliW7UUl6rn62TY6VX+1/+dPF0aZJLrvuWVpOPvxp6jm2bKSYlK
	 RPZ0cVWrV3UXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9233CCCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089619357.24292.13730585039641374048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af37f085fc37e2192452e335ed627e2a2d6c534460b13b67f253fbae93a24f4f
Date: Sun, 19 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760896193
