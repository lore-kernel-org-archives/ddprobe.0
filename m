Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158612F8C34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752766194; cv=none; b=h1uxADzxvJxnNIeLHf63xt7Afpen1j5swrL0JkKSSkknj80ox82OnETOUxZYD33MXeEMnPj21K2zUkTZHXUffwkW48GVoia790c8wTAaBNqsNSIpctnHAGPjKv5t37OfDW4P7X1sBg3TfdIonKHJK3JGvcHrhsUVi4C/V92WJBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752766194; c=relaxed/simple;
	bh=BBrWKJ9vStEEFRawC3HcU1QXPysRa3sfnncamBJzzjA=;
	h=To:Subject:From:Message-Id:Date; b=W+4ae5H8q2o/qqeCQbh6+LDcJXnrYa7Yy6r0mrQACWXcEPZGJW1jDFVDI4sHTomJKYbgt7b96WdZc5HuD+iJ0DsJvtRK2Z3EYOqiuaJf8qOx/EzPIkbjizBdqiuypDUENyAhoOSmpaLLkhJh+j/p/ei411yfM7CDFbr1w4pk2z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0cRXa21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0cRXa21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F45FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752766193;
	bh=BBrWKJ9vStEEFRawC3HcU1QXPysRa3sfnncamBJzzjA=;
	h=To:Subject:From:Date:From;
	b=P0cRXa21vHhc8z54t+Ry5fkPzmMozihv1g7c3Qff+fzKGkL6SIKzjXuN0tD8nw4gP
	 Kzl3JLaTfNuIZpdzYKsEzkmFaUz9jxw+nk329/LTFpQ2GSsmhe0nKEj5dM7xEvSySr
	 y3eTUV6gjR8zJdZfUOWJmYlVwGyhYynYCVk5iAeBUTJR3aHhGvepaOMM52Dm/eb3xT
	 5mvA7dSv5JepGsFZ0eXz0kEXJer+BHHSMmrnAurgdEOe6TsXvxe6LvawJgGLwPLde6
	 21k/75i9kImWFz6zskZcX0THcJqNGYnFOXlx7/EG+9Cn0oYp4PQ3qeIv7KhnM0fwGW
	 +G9j9y9UNGlfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F882C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276619358.24521.8941250372564421169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3658f43e0dc78cc27674de01c9732585723ed3e53c25f8e32929d80aee9441
Date: Thu, 17 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752766193
