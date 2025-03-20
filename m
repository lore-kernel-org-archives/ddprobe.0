Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C38C30100
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742485194; cv=none; b=ClFqsQCOWo0uXe6ybPJc4/QXL1OurETvt6zKk/Ojk3E61Kho52vWuW+6dp+EOkEnkR2eJZ9aqCWvhQ+gmvmjVub/mooSmiCWap5Igkh610lPgGu0ZEIAhpCLdl+c2nuGCU7lCtGelx961ZYaQNYL8BiXR7T9bfZNIEIa8sIB8wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742485194; c=relaxed/simple;
	bh=Md3Pxa/ATwdMiJxY9vC5yf4ZrUYqrKXGuMjKGIxi0Mo=;
	h=To:Subject:From:Message-Id:Date; b=iIpt3LNzq/1kFm8PMpGpd+/ZyEHUjqEaWHPO4svIiTo3YeHSeOVnT026+YgKOi+gwl7XhwguLxBI2HkEOLKKG9A2Tjbq+7R/UFXyJOrnjynps0vWeGWlVh6hGVZ3J3DG9NVwPafnUAGkTq9LgRzsD0Hreu6ECKau2pLHbAwlqAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghTO6rq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghTO6rq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2353C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742485193;
	bh=Md3Pxa/ATwdMiJxY9vC5yf4ZrUYqrKXGuMjKGIxi0Mo=;
	h=To:Subject:From:Date:From;
	b=ghTO6rq8o+6TMpMTzIwMBM7oGEpYiAn5vXHMoGrqholGCOOkhNFhgjKL8aXWMBSfI
	 CHzV8W+HCQ/Vr62wu7cAmAOk24bAZV5/1WVGnKavn90YdEyszJBQCxg6oenU3xKE6J
	 SMq5VDBvFU7UEngOGsidwIqwQP6RWUvtRw+zWK0eVoiwcjxVSGZVruAQHaCXq0TeWa
	 jZD1etWDODgIG+ENGQNQAR6Kq+5zFCurOvYXy/RGgz8Xgs6ykyw48od57NHmtssDN4
	 IBDQVjKlnICZx0AlTGT0YJJVBOhMKUx/Xa5WAmcMCJGQqaiR8AjGI5ZGFlsIwfWSzI
	 ajBTyIMDIKSPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBCDC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174248519362.9718.4701993311357551617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4581db233660ca0725fff919dc683c836ee04ad65ec1abc2d355002970dccff
Date: Thu, 20 Mar 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742485193
