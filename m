Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8E2169AEC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717019663; cv=none; b=tTod9252+SE41vnlAKRDxLtIGOkB0/2B52N15qR3qEUcZuoo8keA7kzKl86BF1bB1SixIirJ9+srI0ZL4UmB8dGnvSQku8ru7Yw4JC/np/CtVDN+lyT3GeRNrcCBlmw9Af4llPbVdwJ20k7Le9Et+VZogVyNs3F75kcz1uVPpaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717019663; c=relaxed/simple;
	bh=CzLFKP57LmhUkIApwofEPaHVyablCeW3PU0tXTnyZtg=;
	h=To:Subject:From:Message-Id:Date; b=IkBP7mJBApOd9jymhrla2ukkwI5dkO2MD7nhnOs1gTuhkdyPZKmnR3jRHiBa0tqzs8E353tijaFxwBdZT5w0XlAPZx/Trci24Al9E/bpngKcVu5dnGjcok2mq8AwBTHox1hQB+LwA4iaB6IAuOvp9wZP+FpwFu4BYOlhk4fisrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpU2OodP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpU2OodP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F50C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717019662;
	bh=CzLFKP57LmhUkIApwofEPaHVyablCeW3PU0tXTnyZtg=;
	h=To:Subject:From:Date:From;
	b=VpU2OodPAPgQqaQkd0tVMsCeAr8crvkaH5Vi4dJSsnKz8ogbA6fc9XaDQAY1sAXPd
	 hzWKx+pwoz6nXUYriX33ztme5S0M82W9KBOJQzBIGzyoJh3NJuXDwLjAojL+AspjE9
	 mn/JeN/DvGpUfdJPZzkpI0Zkuf1LOmBuu5ucS9zyvsBMRV+UW7SV4RnBvF8kCmnb30
	 zxpINFf316J3wgflPC3UOf9lpQU7bd37udPXRTF6b6g44XAuoIHpOlFENtzmwm5f9G
	 kdcUKaa6Iv+hTrezLMxB5hu0NCXhYQvuHFhUpMkEZxBffF5St/Bqo2lWJXfk5nsMNl
	 a3/86YKoZXWmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B68C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171701966280.9769.3492641866996713699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceccc379a22535db96eedc36f970ca36c1904d0ea7fd57cff9195c62bf1ce1dd
Date: Wed, 29 May 2024 21:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717019662
