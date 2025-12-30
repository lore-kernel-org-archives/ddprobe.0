Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050D831A041
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767111234; cv=none; b=eyyzfEHgeUBgEfHCPXM65gZkFD/ez7mri4QxeVKDCWDV22F8qOmbVLjbq/37RAB5kd/DT0lQ2zLYJnGcb77xSzoHbWYcXle7UxV8zZGCcAOqhtOZxYeh1rDyRawb67+9+lIE8FkeCn1OETHdnErbsY3ZtOZf+ZtNrziREdMbxZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767111234; c=relaxed/simple;
	bh=osx2BMFNeRj0/TcETHRvEaQWu45t/w+MLhLqbniFNZk=;
	h=To:Subject:From:Message-Id:Date; b=D3Vys0QJdz3i15xP75pNb1xZzpFA+mkKrF67fiIjsCjR7wsqtu4G6XtV/WayiGyIH/kJpY8pySbOiE82UwCrAOhWs7KLiNjxQxSauGJKjGFfzJjkGldzi0rct63SNIhpWtL/jzybhIDrJFdejBODdUZBeLiy9cpeiJ0MNSxNzmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQi3CK+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQi3CK+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3760C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767111233;
	bh=osx2BMFNeRj0/TcETHRvEaQWu45t/w+MLhLqbniFNZk=;
	h=To:Subject:From:Date:From;
	b=XQi3CK+RDKTmfkqzcigHeS6kKIpRtOJt97yztUKuQCylbiqNN+DHOZxd2CIiXpNs5
	 mHUG9FFbfRs/n7yHNnbXXtGdN3MOTXtMeJT36b/QYsAgrfHRcjAjCeg7L+FgFUMhGO
	 NI37Rscxo+LJLI1tIAqZ4TfjuvhCBtnwOieiwl3yUZpSe5m3/oNvIASCgud4IwoNgZ
	 u268rBzYtj1nlA1jZsKAIjoZXmMzFjZ4OEdy6ayHeq0PuEfz1JWk7ljud7JQLKKJWX
	 8L3cpmzyi+jQudueaxuRlRdSh4GVRT5AjgiGjwFrxt7zvU87hU7Xr3XcXakpAi44uW
	 2M9FiL6GhgVgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AC6EE4988
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711123357.8292.13324461610192022565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e336fbf716efe3c706819eaa9f800cf39b0c987a36382c56fbb52252422768fb
Date: Tue, 30 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767111233
