Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45569221733
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741360134; cv=none; b=DlVmuwqIt0vPxTrJHuPLMdvra+/c29ii9LjCvivOO4DsW2z6Wb6mXtw/GVkY1xKTNN/q/0Df9H/AiSVaWY8jn+5rQiv+///xdFjFKksW8eOFAO8vliACf5qCXNVTG+fkXHJO1zG6wPhfypnEUX/GFvjafloV10G3eR37Mt5V/xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741360134; c=relaxed/simple;
	bh=SqUCOKhRXhS1SJ2l9MmZOTlogZ+kbi5UcgGXAifIReo=;
	h=To:Subject:From:Message-Id:Date; b=BT3FSAYATII0NDgMdDOfwCSa+lAdOxeGCzVbOVfdV8ZHriH9/m6Jl5NGOiltAt1BtAoMDAMJ5RmmpGLH9G5+t/OrBJ5ncgEXwCnzowukLZmn9FRND882kZkUBfhNg5Fo8aWGXWKlf7OFsCU3rBJwDlWMFIxrDxMoA9WrH8apIF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7TRkKh0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7TRkKh0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9C4C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741360133;
	bh=SqUCOKhRXhS1SJ2l9MmZOTlogZ+kbi5UcgGXAifIReo=;
	h=To:Subject:From:Date:From;
	b=T7TRkKh0eP4aNyM7GuEa4wCdqb3G8Hf6ysjecgSstQPeeWgPA1vqqoIsLGmyd7X37
	 PL4zrj+ziMXEl6Vrdg+yitaTHeX417urdw0/S+uqFOU+5KYtg8WmFpWO1rji5UwCU8
	 x0lhnnQiikTXIdfNLoFnUJB7C5bjPg9i78KUqJG9TtaKQ6j/oJjxUA5vHkXQu20Omy
	 cbCiS3c/+kpeNeNUwBOsl51ttHP7oCw+I2WagFTQZcC7XC2zveTRMpu7wlmerjuCos
	 p2yiTFYCCXIUrvJMhUD4z6Fa1PyejgUBySs7ekIM1DJXu2xZcX+KGysHA6pyUgCa7j
	 0EJkToDfsSUxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F62C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 15:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174136013361.9977.16441451933404732260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440167a6a7dc9eadf2ee6fb11039d257f1abdfebdd01f02d14434f80d7cd8e42
Date: Fri, 07 Mar 2025 15:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741360133
