Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3773F101E6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721633154; cv=none; b=JUJxqowiU/Z0j0gKygnNmd1EOTUilhrhm7NTk/IwkFiCsNa2piN90ykLLzdgkimAX6D8cWe3iJz3BCNqRjgb0auwkUy/Ww4H/Uz6gP1gVZUA9QTQEdgqSWrzI3Lfpp0hUfDr9/rlf9Te84jtc2FhocVVqdSih+g589YBU5LLou8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721633154; c=relaxed/simple;
	bh=mmx3JYo0/OHcSYD3dxhPxq9qDidh3OQdxxoitWdJvwA=;
	h=To:Subject:From:Message-Id:Date; b=kWo7RgsuhEBMOogoL8d6VnT5fiKHpkmIRqcp9fAzKhhMxyDSBwFXuO3gD8uDekNPeLOxKm65UrP5o3sM505Y8QRYy+cWydfIAF1WNv6bYpwDWVnX5ZYQwnJyvIPK/sLm+G4QldAiCHG1d7FOcgFBeK04UVVLLQ+n615rA7Uzsxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWmQfe2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWmQfe2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB2BC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721633153;
	bh=mmx3JYo0/OHcSYD3dxhPxq9qDidh3OQdxxoitWdJvwA=;
	h=To:Subject:From:Date:From;
	b=KWmQfe2TMHWuK+H/4WialuYqI1vuhr0PirckqgZWJ5nDYgeHPcK794de9LIuqtgxK
	 mXTB6J6rP8pitqesqO8LnY5h9u2LjXcuNEOgUU1/P4nigYJaZ06JdffZ5RITbTa061
	 /2/Xm6kk+wNcOxkbUMDuwTs51O02I5yoCf0coOZy5yZlXlrrFYWEKs8mTOH1dlf3Wk
	 ia7Xbh4OfoYCAQr5Fz7aJFs9+9o5CwfWnJq+BFFw5+JEfWPY19at4/zjyarSISC5uQ
	 eJ4ST3lKf8QnIZlenod+KL9LAOEykywbLKhxXxYkgLnvymsOfKflUml5U5OzM6R0ke
	 LqAYd5c+o/baQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93700C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172163315359.9392.15875081659133212941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ef2280d88f18be4f4f56ca2716740db85ad9853e3fc4dba43b2a9e1c48d41a
Date: Mon, 22 Jul 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721633153
