Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2212027470
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763338914; cv=none; b=Q0LDTidtaSaXEqo65gLm2KghnH43SnQcVIOLDuRaGjMBwHN+WCHRNQAarHAHYWMChyTsFB3rGAYHbM1H6q/PNCBJfwuGWxJeBDKUUHubEMKflsWu1i7y4uquW/4HMP7xZqzNLH3OOZx8uH+RdOe0FimhAIk5ktalUPtwE5sZqlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763338914; c=relaxed/simple;
	bh=zQWa6AjVTqK5qPJrXSNngp0YWC8LtrehdPsHqJJWoOI=;
	h=To:Subject:From:Message-Id:Date; b=oMcTTFZwLKgjixudAsNZun9VSK6FDKAEMYVwDdx1Syt6Z8DvIOqaXwV8vWcFq+jq2MlqyE6FAO5QJEhSYTyAYfafSuTjbuDNt4u0fMhfVkQbmtm5gZnKtnRX246lE/LQuzN8vN061SFUuobeL4jY/SHEKF9dsb1u4KVgjCztr44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGgwob1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGgwob1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87C3C19421
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763338913;
	bh=zQWa6AjVTqK5qPJrXSNngp0YWC8LtrehdPsHqJJWoOI=;
	h=To:Subject:From:Date:From;
	b=aGgwob1ynkqSwLoMxuQeo+0up3fSoib9OEfwqyiDR8FhOKdRJzi8BF/zNXpiQLdcK
	 +pidKijNc6hXxJ2bXZzv6j/OWZcA/+Xaw0p3tWytSksG2/lYLW4LJJFktQpYNlCFkK
	 gv14nitU1XuM9Zz5lNp6n3AH6ZfQ6zEMkEBpkaCx4KRzE0pnTjSwSHuixvdKS2nEfv
	 hfKLq2lcx9cU2hEnjVISIHEmHVCSUXQiOO2suL0W4a/TI84b7Mek+7vAkkz7MCawkm
	 6yD17A5v0wvAXZutln8m1t/6MC40PzaR+tJBSJ2kdDfKAMSs5Plf9EHaYpnBqmYzl8
	 YtOqq/83MYX0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A44CCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333891359.1302.14056664340210994054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e9495fe6485af49fc6eb71f2910bb3886278ec35a779859e50bdbc61e76752
Date: Mon, 17 Nov 2025 00:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763338913
