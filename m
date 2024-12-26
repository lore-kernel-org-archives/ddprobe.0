Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229B22BAF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735236354; cv=none; b=JrtRFr+cLNEZeDGMdOtYWq5PtEI5ioZZt2V0WhwhxU9c35kvD6NnfXR8VVmgiI5l6l89xd8TEOlmwbD5G6WRo84ytM7d829aZl/5xwEB/n8NLnn/gAjAY6lqwG1IcSE5DT6Us7Vh5Dektdzbm8GdsqFRoYdoyUTG2+BELmO02TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735236354; c=relaxed/simple;
	bh=27fqRKw6uqcpwxeL2/EDIZAHxBVfjG9S5TfmBA76N7A=;
	h=To:Subject:From:Message-Id:Date; b=t8YSUQ5WEZjiUHMkY6rMs5GqhBMKkdjNdO8ejWirkfv5G/7DPSUTQcQePvc0wRhMuTffaqQ+YCPe0vimKghh6eHWEAvhJMSiiPTg8jP1F8fpfwcrborIdGhkgWYiU/iMeePDsrCpMzSM4CkQmYtZPN0uKFpaf6fOYIRJ23ITu90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eu9EMPtZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eu9EMPtZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A940EC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735236353;
	bh=27fqRKw6uqcpwxeL2/EDIZAHxBVfjG9S5TfmBA76N7A=;
	h=To:Subject:From:Date:From;
	b=eu9EMPtZsU7gM/wbMMV29azK3f9e7Ykp6m8N4wNZvKvlW3Uu8qybrVSxEI4XV7c7R
	 WNvQZ/6o4GWoYQFH5QiXF1MjW2YCWNliaMo3SpDrgrSTJ4idmnAM8rD4/J/0Pc3L/E
	 Fuv4ZpN8EOBea8R4+bTolxb2uUCFo+zy+38VfCTpQs/zwW98mav5+/GuGIy3buClsA
	 NiQrF7U+0rbLfGc8A2EIc8GNkHB9smvtzXQD7uXueFcyyb4m7goZXJhHm85eIyALI5
	 Jqn/++8ZOdQGl905LUi4QyReo3ElaWBAbm0Oce4twxDySzEJVOyY+HwQe5hctoD1kj
	 Zxm5VhRxKJLVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9580FE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173523635358.17738.3400997809328808529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc684f2e957ae1404ec9d7844d806d9180e698c6b499ca1bf7d4b9b817c418d
Date: Thu, 26 Dec 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735236353
