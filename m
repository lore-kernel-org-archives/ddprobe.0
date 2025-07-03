Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADBE28688E
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751582996; cv=none; b=JNOoAtdWI7QJOXCyxv78w5xuFe3sJHcjStsONkS6YEQRhwn8OFd+UNYx6oCVri1WlQDQYCJnH51ocUM9ChEFMVpD4ArhUW27iBtHMCObHFxN2wuxoU+wi5NSPdntI/ZVC/ZLTmIfjg2lDCLc+srRQKeJnFnIbB5QbwfBEJKwupE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751582996; c=relaxed/simple;
	bh=ayfgL7WvSvE5ykODIQnlYOnh3m4QrpbbwPbxhGKmrWg=;
	h=To:Subject:From:Message-Id:Date; b=F+9UNK5UTNw4xRtYXrewwKcdTKU5sWwyQPNLl1IxlejZbb4n7ExB729PrP9mhoe5hiIbw2Eaf3Ufoh23W0c1aTJSBB1pe3z4Es0dlZ/nyRYIARSsPTYzfW3C1D0x3q4FPJV+3ldLv0OJvlQngqoRHILJcpSMTyo0gZzP7xtGYR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXzNVN5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXzNVN5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0978C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751582993;
	bh=ayfgL7WvSvE5ykODIQnlYOnh3m4QrpbbwPbxhGKmrWg=;
	h=To:Subject:From:Date:From;
	b=aXzNVN5Zr+r8kEI90mdh1hyWalB0OkYg1m4yRlNE0BKhZG9ZsH1UwvH48a3sF8SMk
	 mbkdzlHZ/nqvIiH8l7MCySnAKetchOghcQ9eqdc7rBz/Di7oIm5HjPhVXkp5f8Ct87
	 Cht2KXh2MwguTZaE7S4tKNVbF0i0vQ9LMVdj2E/fQ8UWv/A97wkeelN1BHg3LlEyTk
	 qXayEJPrsjvsc/ViwSkFpPIFJhFp1qN7pnTKMd0ojMdBN+lDFugg4rWbNr+1+sFmGS
	 rGW8HK6hxrN8AWuB0AbEAp+z0XUfeI8P7zN3VLfyPYRx+xCDPSyXIIWtWoVvTTVBxl
	 7axoeJ1i7g74g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F244C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158299357.32013.17308232128335654865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478ecb71f531ef783f9589b3369a31f3d5769610badc719fd7a977291f801523
Date: Thu, 03 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751582993
