Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129E02D2491
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755539394; cv=none; b=WuUtpSfQ7yonExXaPzOXN5UNq52O41P1TPww/u7tILTZdV7Ao0+CApMOcMIgsOmtNkZX38q/ECxcxf5U9cT5XzwTLi7fQrN/r2y2Mu6P/Q9NzJ/KDzuk3jDER5O87Nj0q7AzQobYA4awd5WbI0MHowZwFjgQyu4GAzWte9cuTqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755539394; c=relaxed/simple;
	bh=0/IWxiDEIicXndT0+IjYcC0v3koAk5RcVMueo0ZB4ns=;
	h=To:Subject:From:Message-Id:Date; b=FAJAAYvzJX8lk1IUM4Kh2tjYqWB5jWOtEBqYmmP1kpfUwOawGMfdvvTLrKH/XR+V2m/byqkXN9hFSb9G7KmTIDqmbcZEw/zLFeuZ9FMkOX3/76qu5dsuIQJXbTMjhTog+kjIaNb9ymoC0BASKkP5LN3fcp3XUyz5znRYUcmF1ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjC3cpfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjC3cpfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F87FC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755539393;
	bh=0/IWxiDEIicXndT0+IjYcC0v3koAk5RcVMueo0ZB4ns=;
	h=To:Subject:From:Date:From;
	b=pjC3cpfEc/bghfU4QcpoSyB3k8Y9xVeAFYIA8MfLfrJk/Xy64nxRqF9e89cpQtfFY
	 hspYZm9IyC+Vuc3I5eogD+E9RRlX+z3/4L+mhhYgg1xcAopTMMfFkPL/3q/ptyEAVq
	 7/U00+id01iPNqF4yDnjtTgKzDH7KkdhI5B8RQ9ibP2qBtNfgbGx+OL/ruqdWRfSdd
	 L2MqaA3jHkjGoSsCv6PM5iY7bL/ZIz8h/IePOH7zk5OVcEaFGozg2eHIjyxAVCDEWf
	 AWs01q3M3QJa12GeNkgiFlu4nMU22BVgP3j4sgElTaNQIgOuzcI+7PSkKf8TTMXBLX
	 oy2D8lOd4QOaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DEACA0EE9
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553939357.2050.18115834329175647412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e55811d122bfae58089a7ff6feecee6be8f5341656e299c888ee83feaf2efd81
Date: Mon, 18 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755539393
