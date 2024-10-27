Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C5625765
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730026554; cv=none; b=FrjFJlVmePbXLUSit73UbG4KF/RcXx5EL8s7nn4aHI8O8zY841JOUrePLrZYHmBb2v5ljKKf3TmSAH/VC92U/gQxO6e2/7OuqPh8qj/r0j9L5FS8RD7TDJB1ZKyTjTYMvbqQub6bgpcyjTZpqWneo4gCC79Tc2T/7xnQ6lmSVkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730026554; c=relaxed/simple;
	bh=wvWD3DPzEx0Fz8iOq4ZXUMqcQKhJrZiICZ97eHVsr0Y=;
	h=To:Subject:From:Message-Id:Date; b=sXlaqVVt7+UmRn9D9D1c2VP/Qr3dUdS+M5cNEVB9doBhVwGcVXmZP02I0zrmUQGjAEx/sIq6uNa4DEXyOZFEj2S9D6CIDiH3GEcZMeqhv5mB8oYaQ2DQ/1biHJBzwyiy6ghJORSrOaPdvIQKNKhaYEpMn5oDCbOH9nNKRaPaK0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYaoGQ/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYaoGQ/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0534C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730026553;
	bh=wvWD3DPzEx0Fz8iOq4ZXUMqcQKhJrZiICZ97eHVsr0Y=;
	h=To:Subject:From:Date:From;
	b=qYaoGQ/j/PMz2mnq4vjPyS4Aq7b1QLqFS/9SdF25dLwBjnUzwnCdeTIAqUgxavyAk
	 A70Ft4nTNQBj6loJVUX8Z8+1aXXeNMjrVlot8vJr0jO47dIsXqYGg+9wz/w4/gUoE7
	 +Dh5t1/mWQGtpPkoWc7XhtRsNHhQleaP/ZQ/oJ/iJ3ibnrJaI+6WI679Dz7TdUQP4G
	 Mwcep54hJtFYbyn+U3cn2z48c3mr6fsNBApw/4SsGmeT4zbxwbt7IQC0JK8RBoq95o
	 lQ0iHnZ+eYwx3/THJZp04PckngUj/RcQ+Tw3+6v+AOD5KlsT42AVev0zZTmdQ0/69s
	 kqCIg7UWfxNlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4B1D10C1B
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173002655362.27032.13816605792572128218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b3ddbb2a3627c102ad7aae06ea61fa44d9595036680c2cf1b8ca21018e3a53
Date: Sun, 27 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730026553
