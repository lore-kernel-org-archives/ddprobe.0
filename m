Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D503FE4
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732584954; cv=none; b=QybEoqVt12Hw8hsKKmPx+KOUX5Q+5VYG3iRF0ta6WVapuQUAfTPeLXQjVkHQ6NK+JWIePeCfNiRz6oArDoSe/IRsuApuW8JdAlqnsq7ycGuWrzm8+omuA93blcV+DO5vwzlwELvWCYPmHt5W8yl+Yk2lHgmNWEKlMdIwnOYgjk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732584954; c=relaxed/simple;
	bh=sdFtj2JxkFkdfsWIMeyoZS4+Kx7PYeLDDfILi0U0nb4=;
	h=To:Subject:From:Message-Id:Date; b=sgJrx5koP7N/va3L/AzzFG3/zR4LWtibnkVFFVaHBdVinbeoogCp78wUGZLKKwT7d0bBCbQm5M+DHI/R6JB8hYA7OQSgX56NKQ6f88s1TwYt4UYEZ850gM3CHJwe2AhOy0hQTKy021coBSbiNKHTQtmGZuX+esNLU5jBtPZWn9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZ/1n5dA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZ/1n5dA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6497C4CECE
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732584953;
	bh=sdFtj2JxkFkdfsWIMeyoZS4+Kx7PYeLDDfILi0U0nb4=;
	h=To:Subject:From:Date:From;
	b=aZ/1n5dAaO0kFDPzB+W1xKApDOME8OJWRhe9VQf9t3+IX90xXDjNQpUGe2rffaNyM
	 8AzhGU8lJvS9366zFsf/dc8CNAYCjJ6uvWTBkgq6QfKWYLWavm4XtYFIinU3mgMwYC
	 zmVTt+MHBKp35542hsGU5MSDCwutaA1fC+jv+aKT0WC3fecjnL1sooHQfJm1aKbby5
	 T2BuWonHdkaMuL4AiY8FgA+xxlRsHdQlnBGBYzs3n88R7ybRZmIYLZn7CNBkvZn866
	 qjzU+dcwuR2mFZRPyp1zzD2PN51GmAzfkeUwuwiSFDoj4w6vlvLQjcOkfKKJqkiR/L
	 66RCTezvQOtGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966E9D5A6C2
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173258495360.4371.12293742254052206054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9162d26fd11b913087ae02e6d0cb462c621f0bf4d714540eefc29e73710a3587
Date: Tue, 26 Nov 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732584953
