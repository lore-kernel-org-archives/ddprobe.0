Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCA2329C40
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788834034; cv=none; b=Y6HIP6HfTd4aXtLZO7iBkJw9ujjan84UIPjszl8KwXIQLQlqZcBYRUSbJXg2YfMjD+b7Y59/RM6oKo7d6lU2FZN9KJlZX9GxSRBs4PPhcgmOmCu+lF9CWD1hPZAbaR7rMr6wd1cxs/+kTaZGaZJ3HRXvBu2f83UzGQCYlEmpMMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788834034; c=relaxed/simple;
	bh=X/FaD9rfFWq2IvEI1g7xel5pbXxyh1DVG7bR+uX/foc=;
	h=To:Subject:From:Message-Id:Date; b=oqNUDHgaU+bINkzgnILQRriAR8kacQ940JaBKsUOMKbLqKKjjhm9WQC2DVMEAGAM4z2BvTmYPanlOF8O4Hk1ThSzevqxyXjH51pQcCyDqR59CH1SDXa+M4nk7HEAmPml0ncl2p2sIB4lokJw5EDGmzsYQXAsjAQtEhTjDJf7npo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnrAJ+9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnrAJ+9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECB5C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788834033;
	bh=X/FaD9rfFWq2IvEI1g7xel5pbXxyh1DVG7bR+uX/foc=;
	h=To:Subject:From:Date:From;
	b=GnrAJ+9D9mC6kB16Tlyim/a+KqdLMQPDR+EUSK8ApQxagOrhMzt4WIa04+kAyjLmi
	 VgWcI62dwcpjokcj+kMcYFV6VhZhgrVDfohw0k+XkqwcQ1VuDc1KN4WhL/3S6gsKqi
	 BU+ANxRaV8RxCmVIpMTmhrerfsnBx+hUutgTOxqVUovbxLFYbTOisHs2DPqPpVzksr
	 5h79Y/XOXTP6rlhFbcs1TVmbu6Y/XnsqLWgwmstGNrUWUzYq2DKv740DUbQKI4gk8I
	 Z/3XF7v/ttuaks8hPbar0J1jYwUnYgatF+ePKU8zlzfInLeVnBC2Op1EMYxN7Wy6jV
	 AbirneVHMpswA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA41C79F9E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883403369.10242.5619599046142414084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4410914c075f36fd68b15a4358013faf436d1e60db5e784f3655d77f90d58f6
Date: Tue, 08 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788834033
