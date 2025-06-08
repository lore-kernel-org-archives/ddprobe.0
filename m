Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691B52AE6D
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749424194; cv=none; b=XAqCN3kPtsw9MtNNRcABvzbhGaginpXVv+vMTY1KljI7b8ari5ux+nevyiwgom8g21jqZps6fdOVqRqzHnLwP7fJqoyS6mdpZZUdLdjkfJ9e12/uPzmAXZwp3/pTtAXKlBMweKzze/1vJeB4Qa2Tt0ZRetDuTiEMvRITr1KhQIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749424194; c=relaxed/simple;
	bh=RtqNBfOzXseUrZrY2F13jbAPk5LxXCGQ0SpzlEpn0a4=;
	h=To:Subject:From:Message-Id:Date; b=Telt27RSMbyXpZLGkVAdG13kiCRD27la3gDdVioC8Xg9AsoC3MyNq89QD1Hy/Ek3y+H4tP5cNZjjAxa14yLIIY175ef5F/jKyetUBrKJxMbny+JOoALhcocm/RsGBH5QZFKa3NVpO0Qk8cPTe8JK7D67NM2/CPgdyKLBtGNKWlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFEuWuw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFEuWuw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0C5C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749424193;
	bh=RtqNBfOzXseUrZrY2F13jbAPk5LxXCGQ0SpzlEpn0a4=;
	h=To:Subject:From:Date:From;
	b=NFEuWuw10We6MfL40hLhFhk8O2+99cMb8EjNlRxpIgNhU35/7jsoH16ARJA5AiXw5
	 oS5dVq/CPP4fZ/QZ1kcT2+vYuy2rsf54jr3d4nXD4ogoDTY+UZfXaib1MetnwRozvD
	 WfJluHhh5EBqTC5LwMW/Sp4ZRRIg77JEu0v5de3IVPi9lAWs9jDt/4/anPI0GzHLX8
	 s/LWchEc0HNwCowkgDz1vwS68MXgGj9/AqqiO04iaag0RMBkCGTY+iWb+1mKG6lR8c
	 dxzoFnqt4NCkBnTXG1seVWJ7G/uXQPtBW2VibVMz78vVcChwb8j79OVFwN7hKe7N6S
	 wje4+53Xi5a/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79AC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942419357.22289.6666565826323552530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d2756288907b1851b558cf20dd95defb4fba67d924a25fe94cbdc5308bd854
Date: Sun, 08 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749424193
