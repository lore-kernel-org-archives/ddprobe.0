Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158B44503B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752775194; cv=none; b=ZM+J4hYAI6iUaX1YFw30WUaHvOKpcejIJB/yOYo/vKT4xZXvsH551W8p03vgrLbNapkM9673Rp3eX9/VX+K1t6NVgwA1QZl9swnGh3qJKgx0HsGUI1fWpM2qvw6GME3CPYpsGUgp2ApIa1ucMJOE6UlikKm55GsmY0vijxSq4SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752775194; c=relaxed/simple;
	bh=70JSN/eifuzuuTRflaTqhcGz91MGW1AeM1MQT3YHx8Y=;
	h=To:Subject:From:Message-Id:Date; b=UZjmh8UqxNUmy0sWSv2IXAdXirZqtbLMcOsfYcytQKxpoGpySah3N1wZMP1wU/D9BMEAee5N165/EZ957Is7QUWDShsBsb6L2cXcX+mraDxnzoYC7oVeFgbg2wwIK9rSoVVAzfV1fTGwv+t/ThI6sapvhNl1WrHAM19RGyARvHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STq8BWVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STq8BWVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A116AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752775193;
	bh=70JSN/eifuzuuTRflaTqhcGz91MGW1AeM1MQT3YHx8Y=;
	h=To:Subject:From:Date:From;
	b=STq8BWVCf9n+WI8d9+8QlftoK3TMmTlR5TZqlP8goRGF2DQYeHfSZX989Tt9cjBsy
	 1vsQ2Ro3XtL/1N92TWg6MjjQ4qNoRVjGhWr+5bJRObIP46qSGFHxW3G6evQnd4IbyL
	 AOIqhRXFWOv4+38MOKE3Kvy2d2c6i9DcIywjs6+wYN8uEEuKN2F3x0mms7LecLZUaj
	 rNNlhfYVtRzhSJ/4qF5IZ281q8ze6vtJbp+D+SHvuCCVVHz4b4VXlfbZSOCSYNY2mz
	 cFPgQ0rC1bcOEakSFpFYgDlHe0MqIp3WcI5iYw75ynr8muvNg43CQ8KytbOA6RVYEQ
	 b4Qk301niuD/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F811C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277519357.18747.1209896247367520366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4dfa1cf095c72f94db2ba9bb60d92950114a6e73762a3e12bca0de32a3215a
Date: Thu, 17 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752775193
