Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6572FB084
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758184794; cv=none; b=oUavACWjjDxRTNSD6UZeXf8Bdeq9PsLFxitRL7jbCCzGRVzbOVxW/xEeDwvw3woA5BH1ZvgjKOMvhxHQIFSjkWZFdRMwHjQX57o8fvcOa+YmgPj+zbiBM+UfA9fex74F54fq+fVCKxyAhDdzrqA4V15h2UFbJA0tKVy6MqjNtgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758184794; c=relaxed/simple;
	bh=iVi2aT1xOE77YA1aVeaN9QF0xSTNFKeJdzzNFt6gmls=;
	h=To:Subject:From:Message-Id:Date; b=j4LF8y4MORA3DtsfX6yQgUOq05Jx9AILa5ByhRUYASClJ91JO7GvBfGcWBHbC0aTiiCxwcQBmEWjkt6uxInPErs4uVb5BvDKnPI4uhkboNiSB3uQwGqQRr9kdOz7Q/D+DJIqcR6BiOeExVLv5hVLSnNz+NRkbW1qUhZvjUGBPIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzDBMbwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzDBMbwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A691CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758184793;
	bh=iVi2aT1xOE77YA1aVeaN9QF0xSTNFKeJdzzNFt6gmls=;
	h=To:Subject:From:Date:From;
	b=bzDBMbwX5hmF3DfJmc4ngqNwJIE1iycMN4pF7lO1x+O9Xh1ALter9AAf1ze5cPDX+
	 fHK5NfnsYbj9dAiN14PH5lfrR5Z0/89s25WwNDnOUUP4zcDWKjIcg7Nmw0AD9t07q0
	 ZjZ8OPwMeRU9XGJV7RvSga2g8LoFPMiSlVYv0gmgvMs2+NTsLh1POl5sLSv+PesbOM
	 vP3thVPLK6Nf+fppcnK+47ccUGgh3xZ0HttGemBMrNdVtBGIvUAF8GdB3Jcq0PBiiv
	 U0XbTP8wbdO719GkX4n7+vn4a3yGrDGDNI96Bl8mcL6DIFnrQ0EaO05PydfLIUZ4XL
	 0+UVAqn4RZNOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923C8CAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818479358.328.6078444478498703774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76bc1c9ee0042565ab70ff4b6f73198d78c7a11be94ce95c58972b2902228cb7
Date: Thu, 18 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758184793
