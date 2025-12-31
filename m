Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212162D7398
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767179034; cv=none; b=s5qsX+6JkiklqLUfIzkYmEh53AUVt28z4Veh7g9AF+uqG2z6BZoQuSAeXae7lN9V7Ye8coFJzhSXIH7aVOFo2X35LKBBdO5FyMX7VrzlyQrjm/jaLYSKl/GE+6oxFsSpsq4aRw/rAbL98H1hf3aXi8z1MvkrOZLUHxGhpa8XinQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767179034; c=relaxed/simple;
	bh=gXQ8xT9KJIxQA/mzQsVieUVf5vwr/rOMIOKfvdoirfI=;
	h=To:Subject:From:Message-Id:Date; b=sCYgjGbAVJtQMmnNwuaQl1/YQyLNdePSh7aqohfnKCbwyLgPizqqK4ZUvtHetWGV6MAOfmsf4BCgwOBHQRDbaHaUvgx/oTIVj8JKclHpB+nVzqK9+vGZ/NhTLJyBOJVEQiJAXbcSuEAWvOCpwidVLuW7AZaE25qtt3Af6iXDP2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHjpo9DL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHjpo9DL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BEEC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767179033;
	bh=gXQ8xT9KJIxQA/mzQsVieUVf5vwr/rOMIOKfvdoirfI=;
	h=To:Subject:From:Date:From;
	b=RHjpo9DLOrsSZ1HuTtU+yVQ3UmjFi7UzMVEFxpS8HJNd8eKNcn/tHtwnd6O+qe209
	 ZP+PvzvEF6lDLbTKHNpaG1U4Um1CpjEu7503FQfgUEt5y9l7Jw2qogLSOlCOPlB7uN
	 0q8Os9LHMKQJX1HeRYh0WMBG0PxqIydxlWCsg5iOEYuYG3KuPUL5A95EP/eK2X1chj
	 wzxH9Ex7S/gHXQKLr78bB9UEHAxS8TOvrYwSf5wwCImxsXi/fF7RO9aSSXDFjLLbEy
	 ByiPUgKxbr8bqRmcCExCzCICGFFbRy3zPY/SSiGvrJwgmtlQJ4/EDUfzyupVcO4Cm0
	 kCDCCW8WlNE0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95226EE6425
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717903357.11323.9385519965450530765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57dae69efa0ff4b66017352a8d5a5b20eecaeb8c6831fe462f8b9b586fb4d8e4
Date: Wed, 31 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767179033
