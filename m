Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D227A1E868
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755356393; cv=none; b=uWyKiBocVz0RGzB/Ssl8liaJOhx/wyQcdSNqyXSOQE92et4fsODspGotgur4b1rsE1htlOqGJ90FXcZgqF89y+ZCxKCDCmzKIXUiBgEmYFE1pVuw0VfsrSL8Ku2+ts8p4DOh7ETvVuKKpRzdjnIq5Mp4jxnhojPaJZ1BnYJLzZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755356393; c=relaxed/simple;
	bh=RVqL1ypsxqqzRx811zIxOpgMmqX2RK6J6n/C3jAHXsY=;
	h=To:Subject:From:Message-Id:Date; b=iDIjnnR4EUxfb01zVc4CvFw5xvBEdJURqNvmrRdVkoX/yDvCB5OoS5xNdGb3G128cKD4x8XtEJOa0nreHCAyNj2hsBSSpxV6cOpYS8TpyOFnTylXG5p7ouWiBf186tFAnsFJxvsj1n+tJtjDSPA0rS+YDomUyPbtWU/dlftoc3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jo1V29Wj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jo1V29Wj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20B6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755356393;
	bh=RVqL1ypsxqqzRx811zIxOpgMmqX2RK6J6n/C3jAHXsY=;
	h=To:Subject:From:Date:From;
	b=jo1V29WjXXv0I1k7XN2XNyYiNuwBj8Z8KpjQkCQoQyKfiEs2+3QbG4vJaRd2FO3iM
	 3wvJy6wFwfMSpQR8v+v2rXAYVcn9bO++gAO9VE+DEosaJ6LIPAn5s2JWk5VmiaKbt9
	 YxVe2WWX2E6TW90WBxGOb94c2GtCDhM8e96bEepf3FYKSBhyBHRnzs1G/vJ05jPXoE
	 tveyilhDKPsAbYW7PvovYOedHlxDTM+ZGm5R8X4pG3UjMoucngeAijBzdtCu/J5JR8
	 NvEDlgAAqLaC0dTp0/5l5JMaZjSK4ey+qd16eR/BpSx3FIIaij47Gkcr1rHzgF6bQO
	 n8DSJ1L9HPHOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B64CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535639363.3817.2731837670004055893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad4068f08277f7258e3e3c4a522e4f28225f956ca8e7af67c3648af8a772daf
Date: Sat, 16 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755356393
