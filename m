Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3411A239A
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772376294; cv=none; b=p0DKxYNyQQRPEVagS2f7UsXhEkPX4F7sSvJUCZSDI+leqlXNTQSrIcrm3saO8vsiLaRt46rJCMltyg5PC7ekGkSPSEjbALC59+eZ9wOkrJqDQ+ze2c37LGg1nMbZbgF1/B+WLWFy8dy7Djc8e67hOd8J68Dd3NKvvPEBwYX7vrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772376294; c=relaxed/simple;
	bh=ALFJdcvv0XuCaNZoUtRvMHZhcENn/t41KvzJcbYOX+M=;
	h=To:Subject:From:Message-Id:Date; b=SqqZ9p8/LwrPDYBQWzt6wPOdA1P8CB2KtocYMJb6CsqCT7sf9bjGET1AZCR/2Uxzw1u8EZK4hweNyS3gRwWs8oVYDrgb24+Ys+FI5SZM+rJvY7EaiyakmFnSx3J0W+agG3o/O462OQRzubAbhXOa9qJ6MtgZ+SH92ScMBAOE3lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boChTdz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boChTdz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD49EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772376293;
	bh=ALFJdcvv0XuCaNZoUtRvMHZhcENn/t41KvzJcbYOX+M=;
	h=To:Subject:From:Date:From;
	b=boChTdz95R/kAU9ZBbBOQZLoF8yXRiRoNalGmuFhzSkFAc+n7fHAt2ZY3PAeoLsLv
	 EpPcwpqT6WaQdBfZaOCJHshPXbugDT5bbZY0IRIMwzSRg66uF3tblVTd0w+ulpPJCx
	 F8JfUfKuAmJvZHcwEWVzXAb9p54L5BPIh5GsIrFx7p6UlGPkLTbhkXd1o3bTYX4dJ/
	 puka2Q1S2UeM/eT5vTbofPYqEHJmQZK7hFcUjOtSglXvzFSQzlE+XdKHQc/ab9xj20
	 /w3+CXJudsJV40EFUsr08vVp9RuB779Pg/yDa3Juip3wRi6kMhYH5q3gyHVIBTI35L
	 tuOGi4sbVRdOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D7AFD0057
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237629359.14073.17130733823362317748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c2a33c7b75c8356ba3ccd1415d6473736b25270b1cf951ade94f5ccc2e2ff2
Date: Sun, 01 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772376293
