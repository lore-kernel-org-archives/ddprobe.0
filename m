Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E942BDC3D
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751578795; cv=none; b=hU99Kz8LndVaCD2mhIHOedBecM/9nG+uX23T/Ef+XvuDjGzkURawNr4qkAgWcOp98Eh1jJbxhkmm6AqSXWX3yF3LaB7Y4Z57SR+/c2+ZzghtrjYVtgPT4IA7iJNGUnL9RTj/nYJywBvTuQwTE5cAc3dbI49RIy5/+Ugb0Y87SAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751578795; c=relaxed/simple;
	bh=WmVerGsXuCpsosjHdmM+lteISEYaq+cACyoO/pXCWTA=;
	h=To:Subject:From:Message-Id:Date; b=VtVcX2qw55GyYhbH5Cfd6Zf/zv9R6AzLsCY1LYAoFopWNJ/0vFBMhk3yK01Jgm+KMD7Hf5X2EPNrfDjjeqfHjk4m2CtMAvzPMg2buDabdIzTYwTEzUPSyMRVAk+yTqProVZNws7aa+6zzKxqAIyy7bcuzfMp5YQ6FNlq2MadHxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbqDZQ4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbqDZQ4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E08CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751578793;
	bh=WmVerGsXuCpsosjHdmM+lteISEYaq+cACyoO/pXCWTA=;
	h=To:Subject:From:Date:From;
	b=TbqDZQ4awmoxheZgohprJKiEP4xQ5zpMIHMOXNVz03sQaquacBpEHkN/Wbq/xcUpb
	 h8IwCxYkTKjE2jbuzwoTpMAzEmkxMu5yKYWnBcuZiessvpRJLGXEysGd/o/qJtwmPt
	 cqTO7zOovcEzsoOro+Bk0hrLrLi1NX7iGojzN6BBAXFIzthJQkjTp3BYgIvo6SIGdb
	 hBaxIVDycOqLSZe7NQdB1rUUgTcXsV7NuB9+GIRhoDR81Fwm5BU2TcLFI4aPBRO19a
	 cum61MJHlrjKDqrwtjaN/Zxjr2B0EhzQtV5Bk/sgOATliaWWwFQT5cXTj32SUEeVYO
	 VTBb/T/cxIA0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D1C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157879357.24651.14199319138424054187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1e35009ee4c62983564edf9974951578dfd2c4b25439b87680fccd344e0156
Date: Thu, 03 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751578793
