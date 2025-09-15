Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345BB287243
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757965794; cv=none; b=RcscrjbCNMyVkfIk62mBJ7ubLc9EpXbmZzjA5rL8oxsqJFunJFdV4k/sw3hUXCtlAn4fwjRS1yx6g/8XyHQ8DNqO8lFiSukbSdjI9HYIthHCGz6FfhVfo69gbfueFVEDu5pC6a0YhOH89QkclybFjR3KxSClmqpyeUR3irzTbvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757965794; c=relaxed/simple;
	bh=6g8HgHoknNRORfj7BOdCDcEv2BKl/c1drmBryDY69T4=;
	h=To:Subject:From:Message-Id:Date; b=sPusgAjLVs8BzmgG4C1oLJUdLhsYBr59Vsa12t4evnCWTqmwpjFxnGziilsZwbJN6bq9S5IX9Q8D6csz8CisVQwusjtp9bxSGRsGusJ8gs8IeT7r/tWfD2pjYATnM3wekFijBifk5CDoaUT0siVuerw3SMbhSxqjZIdYtBObZ9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvydLRm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvydLRm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D28C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757965793;
	bh=6g8HgHoknNRORfj7BOdCDcEv2BKl/c1drmBryDY69T4=;
	h=To:Subject:From:Date:From;
	b=rvydLRm1X9iNE6Ie8XWaUca7vj5aqqi3i28d4PzLH78hBP2JONtZ0M85o0au4pUt5
	 /vxugHrIOUg2qmXVdcX1O14hptlk5kgcQ8AHARAoDQBeQZ9whspHYNEvwgH1RZ+nq+
	 +JR5P66vasTzBM4QxOsw3UbdZko3CoBk/PoOv7E6uZs4iOgsswXWOmIy2yY1ixj3E4
	 HwNQuktzqX3VO9vLvvftwcK2qIlkhXQk0ThsLiaKuc1hUDFKdf/Y3hVOkcUiD0+Wor
	 RJM5QSpaYhHbzZ6dvFKszEV+uZuYRpk0IcEocnY/Cg0A4Tk5YJw/JwrsA7LJXri6GW
	 Qquy8dUJS8aPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C667CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796579359.13903.16872537455715648069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ade17bdc8539d008ccdd3e6cd0b228b166358ddcbdf3296776b92387e3acd1c4
Date: Mon, 15 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757965793
