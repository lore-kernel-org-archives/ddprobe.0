Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132FA38B7D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772020494; cv=none; b=Uyx7dhpnnzXYSyrpfWneXa2TMfyxyiaxVnI200OBJjfjotVfOi8CQOQeySQEiUfMYr7tuGgaD9hpvC98ozXO/sFMGIWz9GLax0fQK19Py2leRIvMrm/tprnaI63K3iTtg0p0rGwF/h111bJRci9kCyYJe+B4KeGtMwigFXD6y+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772020494; c=relaxed/simple;
	bh=GuMcFtk3pvyBpaOWN8Xk7njH5SuRsa5+ztWdWv0ld4M=;
	h=To:Subject:From:Message-Id:Date; b=KNDymqDI+u26CgS653uASZUprmJ/CngDZepBN5UusFqRuBiBWoWmw5NfJ8wtEBWWcn5JqijOfTtZos7XhXjn1+lcFpm3JUm8yG3cDwxJobYX6u93hAUmBzq1BsZjjxA0MmJ4hgnU4BhRyDd0Ji1BgKpL8Q/+YZYABV77T8lGAn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOT7pJ0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOT7pJ0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64B7C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772020493;
	bh=GuMcFtk3pvyBpaOWN8Xk7njH5SuRsa5+ztWdWv0ld4M=;
	h=To:Subject:From:Date:From;
	b=fOT7pJ0n8pviIkfp4at+Mw85/qSjdKS99VRnZH4jjGdOT86763h1Rw8ojLlUIkt67
	 QWWq4S8qk8RwZm4pluQqdclWWYMir3xwUamtPHVCTCoJ+ekzw9rGiblp0oDc1X2wse
	 l4jqYzJVfhmtSH+g5EI9Az4Ta37o16fCefX+g7cE1GT1KWT0wD6VMwUgpebnOMAkJD
	 vOjaxamSagKT5/Fr8lFZfcgMZ/IOSGC2RFboz0N7mhKLRjx4V9tHGx5YpH0P764ebB
	 LK804ot0gETbFSgF2IrJajq0pT0YbbeP1dUq6uzhzt6QNGfKsErsWh7moWTrjVPWV9
	 jzpdJ4Jz02Ylg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935E0FCEE92
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202049359.11217.9208171873321391017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e903ddb270c42d7ae012837d9824f1c37994cacb9c826f9da9d3b6884e7b3e57
Date: Wed, 25 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772020493
