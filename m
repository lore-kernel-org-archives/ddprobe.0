Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C10723B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720950023; cv=none; b=qurgcvoELkBNEVQIO4uQyg9gbFqKf6exyNtVzpjacRxxhpZRJA2+7+oX/RHGJv8AA3hvtF3dwnLFF2OG9DlP2xu5iaG20BeHJwlPq0oDz+Giu9AaYPrD8E39XiN5s0dOodMF8vngD0WOkVgie7di/d4l7ImttpfXKd/SAoXulCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720950023; c=relaxed/simple;
	bh=mS8DAwpRcqIdSKKtQFgQsEqGZsjHycxLXoh2APBhlxI=;
	h=To:Subject:From:Message-Id:Date; b=CZ8SH5WbIVxTwyY3SDS/mxn7Vylna/ekd3OdASeDpE7+66cuBNerVh8JYiTzIHQeOLmKYd0Pa3xNFN+MQJsWQnadEpUbtxGN00kMgdlUi7gQ/+lDuGzNiTWlnHInwGA/c39+ZJqk/m4vCGWK8FznVyQWmng/9j2ANYKeHUmdUzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHkp3NjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHkp3NjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56FCC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720950022;
	bh=mS8DAwpRcqIdSKKtQFgQsEqGZsjHycxLXoh2APBhlxI=;
	h=To:Subject:From:Date:From;
	b=JHkp3NjECEuUJKaqKRZGdQSNg1n8t16BGSV2sLA9GpsKjf/N2adEGWvtA2exWEhnl
	 1XlzW7o0y1NqDzt71N5akS1d1bVfv7UHUnPD1FGI74u6/270EfmOBNzEBolYSslslr
	 FQQCUb2bjBObt5mdsivQG4XxHESY4TK34QR9xQ76I5dEMKDpn31kXMUadndsQXR7VI
	 oHKhAYBZhCmyFQGZI3LTaGw4KAHf0vwCL64b2PsexzKe1oD9NT3q1n0iidcGueGMEk
	 LxsDQpd3Q9EW/em+6V6pgoHrXN14B8Bo5UM3dkTJZQG1Q3RjIaeAIBdHsRTliXzGkQ
	 e02X6F7H706FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE930C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095002275.12884.2901379565524101142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae001cb9878506b8f4e1b4279f55be07a2a6a00f6331dee8bc0bb3f845e5b52d
Date: Sun, 14 Jul 2024 09:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720950022
