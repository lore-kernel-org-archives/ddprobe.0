Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1123F238C0F
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749584994; cv=none; b=m5UErUMwQRedzGqUVlZHgPgR+hJocfFrKIhhxBbQeXpJsMyYh8uUWGHQfR6E5w3e2P9JJA54aGDvBmVJdGsIbuEUZiQoVKvQBNx1wXkm2nfIaR6U3wUoZVz/Q9mp5PsvdVQRnC96hKE97dYeERa2O7NpXgc2Kv5gDbRu8Um2718=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749584994; c=relaxed/simple;
	bh=4T4IMogEol6+G9Oysng9zZ0TptAK5gPNgaNJ++WNt3g=;
	h=To:Subject:From:Message-Id:Date; b=EXyZgDYadfSeTfm2i3d3gOpppRrDaBaTOy0NKBRgLVTsPWf/fEqff3S59rmoE2/iKsQoI7O0lIwhT2xR4Tk2dCzY5/WjpsA7y/yJ0RxwvTHI+oRpRLwNioicMJwyYl4JKe+LbUalrlKWFS3twB1ZiuuHOi4c9Nuqm8OaL8zTZ7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkhF8iJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkhF8iJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3A6C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749584993;
	bh=4T4IMogEol6+G9Oysng9zZ0TptAK5gPNgaNJ++WNt3g=;
	h=To:Subject:From:Date:From;
	b=NkhF8iJEby6wfl1ZgQSW06M53KWxTnBAf8xPHGocle4SPPR2aocWkAedwrAfLStNL
	 eMMlRmb5uPH7GZgzou+WpKU9Vz08PmkAnGfzLWEiyPYueYpAEbzK6N3UVQa3NE9Cjz
	 kbHfyFC5RpG0HNvDiHS379ZRRLyj+OuYl0+FpNJJz+hpi3vpbp/t1TZAgzxaXf3LpP
	 HW9EPLu5yUSsozaQS9FU3yQ5oxZnUAw7zQG7QAF1BxXtARw1Ma4U+8ZhTA/ugOqjM6
	 LdwFeY/nKAdHIECE1XJZILyPTRzCc12cG4jRGKtU6WPY0ZSx1k4ucjhqx9JZzn6+Sa
	 SoyEfOj3n0tBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E60AC61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958499357.24195.6169053610429468776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8255d1048fa50159e7117a486b0a20e15d4553ac2417f11175ab6c810ae76698
Date: Tue, 10 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749584993
