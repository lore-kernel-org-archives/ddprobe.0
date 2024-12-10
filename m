Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114FB3C17
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733855754; cv=none; b=gTXix+oXwvFnOMTTImC/PDsc7kZqfJYDL4pjQ/HN+jgnUuF4ev3QsF8fq+Dmyhz5gjRofLSfXmaxpJ9u3yFnaz8w0rsYHlMjLw7g8QR/j7wnROT1X+FXNKyZRL29OT05m4p36P7wWxOlUg8EP01vj/5RolKmyiFPYvsAzTjENzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733855754; c=relaxed/simple;
	bh=cE33Ukl5ofAIjTnZNVr1Iw1B8RXhL88pGOosm+x4bZY=;
	h=To:Subject:From:Message-Id:Date; b=tSk1jGqLwMWK8C7W249fMZqKYj+uw5ErB4SymS8hpUXSuIk5IHVj86UfM1Lx60mnz5yAVLu2/cS/HUw93Pw42PbSIIow2KHz4pf/PqpO60dJf3oVi4fYjE/V5twLu/MI/v1l3mXRorp0wqEpUOaLulmyf1uY90uJUaZrcmR2eKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3tsk9+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3tsk9+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4173C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733855753;
	bh=cE33Ukl5ofAIjTnZNVr1Iw1B8RXhL88pGOosm+x4bZY=;
	h=To:Subject:From:Date:From;
	b=s3tsk9+gZ8Tud6tOFg84nXOXLnIRcWbkNMG0Jd2Vi/Ot+8ZtOyGwDmRD54vqqWuXw
	 MDnAzNd0E05B88WEQ3fw64k2an1iOImFZEpURfXzsfVOSIPeQMfEyGgjZnawvHyjeA
	 SfuiUL/tDhD8sUbjKbLiuqsZbfHgI9dlkTI8odEe+j+0hef6pBoU/qI5TcXABKOVND
	 R5XS5OZ7SxNu09raSHeaei9vJWsXlLvGpyXAP+VoMp1s7gfkNzlNfHivO+3W9hFM4q
	 DIHqp28QHeqyRuNh5/O+iCxw7A1/aPW0GqQBiRlKGLZuhuG6DuhYR7nsRo8icQJeRX
	 JruBU7APmk3Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A25DFE77180
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173385575362.12893.7918076532896848814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a7d527416ec5c433f9fd58c0f1b581b902129f60c9dd8094409ac4f9934119
Date: Tue, 10 Dec 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733855753
