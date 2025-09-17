Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB0127A929
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758139194; cv=none; b=utdO+G1PKVvGp13oE3Tfc97I8bliq5q6/Sj0VxhQfND8/922/NUd7GMC3+v8O3o/2XZ19FEpp0o81r2XutfyqDikPxnAhQPy0OIrHas+Udnn1sd6YvhqROU96vycgIqCAspd+7iBCAKtpdYb1BK1aNQUwV52541fLk4DVbuQEwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758139194; c=relaxed/simple;
	bh=oDo3n5MW/JuqoAT4KtZp+cX246RZdFEVYLRxVyU8fNw=;
	h=To:Subject:From:Message-Id:Date; b=kuk0oWXzG8/9XUG0oxEuLcMO//8z8zzED3NHSc3s6MEg8GqrPFy6Z6dL7TzyfLID/VwQRLVaB05erEw6aLXNx+siTvAYDeG+UB4CGw/KfviTErYofpNHAjxUHbSTPo7Bqb9jPUdIzr7tRrNh+IfieAdhCBF0WlcPhdpnhssuDmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSJcSnoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSJcSnoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEABC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758139193;
	bh=oDo3n5MW/JuqoAT4KtZp+cX246RZdFEVYLRxVyU8fNw=;
	h=To:Subject:From:Date:From;
	b=LSJcSnoQsIlLz+cwIuFb/GmUHxiyUIxEduBKixeQCOE5URKWSVg5t/rH6EJ+ebQDl
	 kURukAADRpt99jqwNtbY5Q3ajztl19RT0+5TM6cRgJOVhWfqDRdeqtke0GgMPm5t5I
	 f+sdqZND+MCEWeSwiJ0O9fw1zPmFoQdWpw8/dph2EJTXENZfQI2yUHHkuPUvDUscE7
	 GiXMW4/A1M+RgjTn9R/GnzbsioYVIctapJ4lX1CJEMJDgTVFo0dGF1phG/JGw/o+U2
	 kXX9bhylGYpp9PFUdGsWytDfjCWpye4p1tQ6fF3yZaKehAFEVjqHNehN0/pLoiGozm
	 dyqcF+9t8rafQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA2ECAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813919357.16584.17870693752582053127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d59703aa4799ebf7b6fa8de430ec2bf5035815ba593df8d0fd67e5ae677d98
Date: Wed, 17 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758139193
