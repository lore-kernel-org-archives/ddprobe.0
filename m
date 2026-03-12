Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361953C5551
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773321294; cv=none; b=uRoe+poQPwv89Nmeb3XkTFj3mm2NmZUAcLPFHRzFrvcPZhU4LvkEyMCjepfhwhPNBQd66ey9glbVgdjbfFjbzT8xB8Fud4MW0Rsq989gZgtrHAyDnKImiQt0IvQlqZ8g36+Jyo+4jTmQ98QVGzkmaz19FFVwE2yZfR+jlkUbIWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773321294; c=relaxed/simple;
	bh=6b4ZTAN8zuy5+FRyhu764iQ8TehG1UHsu7YNnOUfddM=;
	h=To:Subject:From:Message-Id:Date; b=cXL7dhOyrrZhcLhx+j9ek4qKm0jvEhQnU1o6XiYYdXeU1i5U3zFVQkHmzo/CJHm5wZnXvuZU/enBBJ6uQoGio4fp6+pWCvHhPQi4efPHEG2JZtH2r81Oll2gv4wNPj9Y9sE9bfoC2dr22QrY65VqGM9uLw27lzUfBsM2kSCSZVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQRNdSFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQRNdSFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D3CC2BC86
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773321293;
	bh=6b4ZTAN8zuy5+FRyhu764iQ8TehG1UHsu7YNnOUfddM=;
	h=To:Subject:From:Date:From;
	b=PQRNdSFe1LpO0kxLvowJKWVLWEOjjMbYQ/agdQx5IvluYs8Y1Sv+Wk/yFfnRf0FgJ
	 vzgKuu+fx5piuU/PThT/61uCF6rbZi9lrD5nL6L3uNbEWQ/mkV+BbJLX2O/L4+E4PY
	 ryif8MBS6YFIy9HdH0xMJX8+TnqiDFxYjoJ20TEH80qoTtGuuqEiYOxQvYjbp2PxRh
	 /7tUBVOAzpnH/4PWAK8BYOvhsa8ssP7y7LLPW1gRBhkL2zlYv7uip3zkNHR9shXi/V
	 eOPzcNSpt890qqSGCqGXKBE31zPZRAJBOTw7lx/kPimmudxLGE+jkRTFGBp3QA2RnU
	 j82l3e9noYb5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD2C105A59B
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332129363.20719.2719831302394049534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132a08ad20a4e72c9d0c66e899524953c450fe519b7a3caafd6929e36e4f1b2a
Date: Thu, 12 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773321293
