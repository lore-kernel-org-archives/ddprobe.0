Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB503CF58
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 00:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741222734; cv=none; b=V3X9VViQ78jAfnC/13T8+xngn0xRFIFB/8XiwZmyO+9ZrRWUxRYczn81uFuB9j6wiq9Fu5zngWbuvFZn4k2W3brUZeZ7Q4thS8NybDJHUDu2o1PvyybvJH/fAIGIaTOSg1blNXXjzdqBEddhKv9u4vghpvbg0Yy2LIj1YKs3Jus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741222734; c=relaxed/simple;
	bh=Vz7JMWbNVz5CVpRbncXHsu2me6lOuOVe5rBhMErYAu4=;
	h=To:Subject:From:Message-Id:Date; b=s1erxh/jYRDKsrEIjuJHQtiF05eXei/R6Un1Fr7kR5R75Y+zD4RXU3bbqoLak2rZy33HWNZ/tao6oIjX89wpkoT/ytciynJec++QhUQMSAeVuIHUdKSSMFv9b4NjFH5Pvs0SjicXcs3zaVQLkk1mw1VmATy7RYUEMl48dq0CDoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGmI9eQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGmI9eQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A639EC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 00:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741222733;
	bh=Vz7JMWbNVz5CVpRbncXHsu2me6lOuOVe5rBhMErYAu4=;
	h=To:Subject:From:Date:From;
	b=tGmI9eQ2RXocL1hKywmFVxYjnXRHoT47UaJDJqn7k/8n6s6e2EJiMgAcXRZtdkVPj
	 XlxwWprVODrkbnwdlueXgjTXaE+BDGSCZMBduyrHzTo4QWhVu/TjHZoAe+bpsdzi9X
	 jPpAV2tDLTiPq3UvpZJPCAaW5biF8gJXB+uItnipM/xy6qmdDKBNGiqxYqI93IpcGl
	 UCAgUO37h56eR+/musgYnhs+ZYc2LE0qgGd/B4uUJxfocXgSjnWU62w8zgwRg2MZNe
	 xoYGsQD+rf0BVtA/eo/oZeayWG+eeyUHu2bdKy3UahAcb3AgVxJ7/73+kZknHXdGMp
	 Pk9QedS/ouNaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96180C19F32
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 00:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174122273360.14272.17670184082860699053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645c3e998dca24d3395c5aea44f3fcde2fc45ea47a0eca10019e9b4931678e65
Date: Thu, 06 Mar 2025 00:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741222733
